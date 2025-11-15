#ifndef USUARIOS_H
#define USUARIOS_H

#define MAX_USER_LEN 64
#define MAX_PASS_LEN 64
#define MAX_NOM_LEN 128

typedef struct {
    char usuario[MAX_USER_LEN];
    char clave[MAX_PASS_LEN];
    char nombre[MAX_NOM_LEN];
} Usuario;

// Carga los usuarios desde un archivo CSV: usuario,clave,nombre
Usuario *cargar_usuarios(const char *ruta, int *n);

// Libera la memoria reservada
void liberar_usuarios(Usuario *u);

// Verifica usuario y clave
int verificar_usuario(Usuario *usuarios, int n, const char *usuario, const char *clave, char *nombre_out);

#endif
