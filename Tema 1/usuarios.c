#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "usuarios.h"

#define LINEA_MAX 512

Usuario *cargar_usuarios(const char *ruta, int *n) {
    *n = 0;
    FILE *f = fopen(ruta, "r");
    if (!f) {
        printf("ERROR: No se pudo abrir el archivo de usuarios: %s\n", ruta);
        return NULL;
    }

    Usuario *arr = NULL;
    char linea[LINEA_MAX];

    while (fgets(linea, sizeof(linea), f)) {
        char *p = strchr(linea, '\n');
        if (p) *p = '\0';

        if (strlen(linea) == 0) continue;

        arr = realloc(arr, sizeof(Usuario) * (*n + 1));

        char *tok = strtok(linea, ",");
        if (!tok) continue;
        strncpy(arr[*n].usuario, tok, MAX_USER_LEN - 1);
        arr[*n].usuario[MAX_USER_LEN - 1] = '\0';

        tok = strtok(NULL, ",");
        if (tok)
            strncpy(arr[*n].clave, tok, MAX_PASS_LEN - 1);
        arr[*n].clave[MAX_PASS_LEN - 1] = '\0';

        tok = strtok(NULL, ",");
        if (tok)
            strncpy(arr[*n].nombre, tok, MAX_NOM_LEN - 1);
        arr[*n].nombre[MAX_NOM_LEN - 1] = '\0';

        (*n)++;
    }

    fclose(f);
    return arr;
}

void liberar_usuarios(Usuario *u) {
    if (u) free(u);
}

int verificar_usuario(Usuario *usuarios, int n, const char *usuario, const char *clave, char *nombre_out) {
    for (int i = 0; i < n; i++) {
        if (strcmp(usuarios[i].usuario, usuario) == 0 &&
            strcmp(usuarios[i].clave, clave) == 0) {

            if (nombre_out)
                strncpy(nombre_out, usuarios[i].nombre, MAX_NOM_LEN - 1);

            return 1; // Usuario válido
        }
    }
    return 0; // No coincide
}

