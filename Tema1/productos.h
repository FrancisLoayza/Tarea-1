#ifndef PRODUCTOS_H
#define PRODUCTOS_H

typedef struct {
    char codigo[32];
    char nombre[128];
    int cantidad;
    double costo;
    double precio;
} Producto;

Producto *cargar_productos(const char *ruta, int *n);
void guardar_productos(const char *ruta, Producto *arr, int n);
void liberar_productos(Producto *p);
int buscar_producto(Producto *arr, int n, const char *codigo);
int actualizar_inventario(Producto *arr, int n, const char *codigo, int restar_cantidad);

#endif
