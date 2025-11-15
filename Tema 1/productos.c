#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "productos.h"

#define LINEA_MAX 512

Producto *cargar_productos(const char *ruta, int *n) {
    *n = 0;
    FILE *f = fopen(ruta, "r");
    if (!f) return NULL;
    Producto *arr = NULL;
    char linea[LINEA_MAX];
    while (fgets(linea, sizeof(linea), f)) {
        char *p = strchr(linea, '\n'); if (p) *p = '\0';
        if (strlen(linea) == 0) continue;
        char *tok = strtok(linea, ",");
        if (!tok) continue;
        arr = realloc(arr, sizeof(Producto) * (*n + 1));
        strncpy(arr[*n].codigo, tok, sizeof(arr[*n].codigo)-1); arr[*n].codigo[sizeof(arr[*n].codigo)-1] = '\0';
        tok = strtok(NULL, ",");
        if (tok) strncpy(arr[*n].nombre, tok, sizeof(arr[*n].nombre)-1); else arr[*n].nombre[0] = '\0';
        tok = strtok(NULL, ",");
        arr[*n].cantidad = tok ? atoi(tok) : 0;
        tok = strtok(NULL, ",");
        arr[*n].costo = tok ? atof(tok) : 0.0;
        tok = strtok(NULL, ",");
        arr[*n].precio = tok ? atof(tok) : 0.0;
        (*n)++;
    }
    fclose(f);
    return arr;
}

void guardar_productos(const char *ruta, Producto *arr, int n) {
    FILE *f = fopen(ruta, "w");
    if (!f) {
        perror("guardar_productos: fopen");
        return;
    }
    for (int i=0;i<n;i++) {
        fprintf(f, "%s,%s,%d,%.2f,%.2f\n",
                arr[i].codigo, arr[i].nombre, arr[i].cantidad, arr[i].costo, arr[i].precio);
    }
    fclose(f);
}

void liberar_productos(Producto *p) {
    if (p) free(p);
}

int buscar_producto(Producto *arr, int n, const char *codigo) {
    for (int i=0;i<n;i++) if (strcmp(arr[i].codigo, codigo) == 0) return i;
    return -1;
}

int actualizar_inventario(Producto *arr, int n, const char *codigo, int restar_cantidad) {
    int idx = buscar_producto(arr, n, codigo);
    if (idx < 0) return 0;
    if (arr[idx].cantidad < restar_cantidad) return 0;
    arr[idx].cantidad -= restar_cantidad;
    return 1;
}

