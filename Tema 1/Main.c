#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#include "usuarios.h"
#include "productos.h"

#define VENDEDORES_FILE "vendedores.txt"
#define PRODUCTOS_FILE "producto.txt"
#define VENTAS_FILE "ventas.txt"

#define MAX_LINEA 512
#define MAX_ITEMS_VENTA 128

typedef struct {
    char codigo[32];
    char nombre[128];
    int cantidad;
    double costo;
    double precio;
} ItemVenta;

int obtener_ultimo_num_factura(const char *ruta) {
    FILE *f = fopen(ruta, "r");
    if (!f) return 0;
    char linea[MAX_LINEA];
    char ultima[MAX_LINEA];
    ultima[0] = '\0';
    while (fgets(linea, sizeof(linea), f)) {
        if (strlen(linea) > 1) {
            strcpy(ultima, linea);
        }
    }
    fclose(f);
    if (strlen(ultima) == 0) return 0;

    char *tok = strtok(ultima, ",");
    if (!tok) return 0;
    return atoi(tok);
}

void agregar_lineas_venta_a_archivo(const char *ruta, int num_factura, const char *fecha, ItemVenta *items, int m, const char *vendedor) {
    FILE *f = fopen(ruta, "a");
    if (!f) {
        perror("No se puede abrir ventas.txt para anexar");
        return;
    }
    for (int i=0;i<m;i++) {
        fprintf(f, "%d,%s,%s,%d,%.2f,%.2f,%s,%s\n",
                num_factura,
                items[i].codigo,
                items[i].nombre,
                items[i].cantidad,
                items[i].costo,
                items[i].precio,
                fecha,
                vendedor ? vendedor : "");
    }
    fclose(f);
}

void fecha_hoy(char *out, int len) {
    time_t t = time(NULL);
    struct tm tm = *localtime(&t);
    snprintf(out, len, "%04d-%02d-%02d", tm.tm_year+1900, tm.tm_mon+1, tm.tm_mday);
}

int main() {
    int nusuarios = 0;
    Usuario *usuarios = cargar_usuarios(VENDEDORES_FILE, &nusuarios);
    if (!usuarios) {
        printf("No se pudo leer %s.\n", VENDEDORES_FILE);
    }

    int intentos = 0;
    char usuario_input[64], clave_input[64], nombre_logeado[128];
    int logeado = 0;

    while (intentos < 3 && !logeado) {
        printf("Usuario: ");
        if (!fgets(usuario_input, sizeof(usuario_input), stdin)) break;
        usuario_input[strcspn(usuario_input, "\n")] = 0;

        printf("Clave: ");
        if (!fgets(clave_input, sizeof(clave_input), stdin)) break;
        clave_input[strcspn(clave_input, "\n")] = 0;

        if (usuarios && verificar_usuario(usuarios, nusuarios, usuario_input, clave_input, nombre_logeado)) {
            logeado = 1;
            break;
        } else {
            printf("Usuario/clave incorrectos.\n");
            intentos++;
        }
    }

    if (!logeado) {
        printf("Superó intentos permitidos.\n");
        if (usuarios) liberar_usuarios(usuarios);
        return 0;
    }

    printf("Bienvenido %s\n", nombre_logeado);

    int nproductos = 0;
    Producto *productos = cargar_productos(PRODUCTOS_FILE, &nproductos);
    if (!productos) {
        printf("No se pudo leer %s.\n", PRODUCTOS_FILE);
        if (usuarios) liberar_usuarios(usuarios);
        return 0;
    }

    ItemVenta carrito[MAX_ITEMS_VENTA];
    int carrito_n = 0;
    char seguir = 's';
    char seguir_str[4];

    while (seguir == 's' || seguir == 'S') {
        char codigo[64];
        int cantidad;

        printf("\nIngrese código de producto: ");
        if (!fgets(codigo, sizeof(codigo), stdin)) break;
        codigo[strcspn(codigo, "\n")] = 0;

        int idx = buscar_producto(productos, nproductos, codigo);
        if (idx < 0) {
            printf("Producto no encontrado.\n");
        } else {
            printf("Producto: %s | Disponible: %d | Precio: %.2f\n",
                   productos[idx].nombre, productos[idx].cantidad, productos[idx].precio);

            printf("Cantidad a vender: ");
            if (scanf("%d", &cantidad) != 1) {
                while (getchar() != '\n');
                printf("Cantidad inválida.\n");
            } else {
                while (getchar() != '\n');

                if (cantidad <= 0) {
                    printf("Cantidad debe ser > 0.\n");
                } else if (cantidad > productos[idx].cantidad) {
                    printf("No hay suficiente inventario.\n");
                } else {
                    if (carrito_n < MAX_ITEMS_VENTA) {
                        strncpy(carrito[carrito_n].codigo, productos[idx].codigo, sizeof(carrito[carrito_n].codigo)-1);
                        strncpy(carrito[carrito_n].nombre, productos[idx].nombre, sizeof(carrito[carrito_n].nombre)-1);
                        carrito[carrito_n].cantidad = cantidad;
                        carrito[carrito_n].costo = productos[idx].costo;
                        carrito[carrito_n].precio = productos[idx].precio;
                        carrito_n++;

                        printf("Agregado al carrito.\n");
                    } else {
                        printf("Carrito lleno.\n");
                    }
                }
            }
        }

        printf("¿Termina de registrar productos? (s/n): ");
        if (!fgets(seguir_str, sizeof(seguir_str), stdin)) break;
        seguir = seguir_str[0];
    }

    if (carrito_n == 0) {
        printf("No se registraron productos.\n");
        guardar_productos(PRODUCTOS_FILE, productos, nproductos);
        liberar_productos(productos);
        liberar_usuarios(usuarios);
        return 0;
    }

    char fecha[16];
    fecha_hoy(fecha, sizeof(fecha));
    int ultimo = obtener_ultimo_num_factura(VENTAS_FILE);
    int num_factura = ultimo + 1;

    printf("\n---- ENCABEZADO ----\nFecha: %s\nFactura #: %d\n", fecha, num_factura);
    printf("Detalle:\n");

    double total_venta = 0;

    for (int i=0;i<carrito_n;i++) {
        double tot = carrito[i].cantidad * carrito[i].precio;
        total_venta += tot;
        printf("%d) %s | Cant: %d | P.unit: %.2f | Total: %.2f\n",
               i+1, carrito[i].nombre, carrito[i].cantidad, carrito[i].precio, tot);
    }

    printf("TOTAL: %.2f\n", total_venta);

    char conf[16];
    printf("Confirma la venta? (si/no): ");
    if (!fgets(conf, sizeof(conf), stdin)) conf[0] = '\0';
    conf[strcspn(conf, "\n")] = 0;

    if (strcmp(conf, "si") != 0 && strcmp(conf, "s") != 0 && strcmp(conf, "S") != 0) {
        printf("Venta cancelada.\n");
        guardar_productos(PRODUCTOS_FILE, productos, nproductos);
        liberar_productos(productos);
        liberar_usuarios(usuarios);
        return 0;
    }

    for (int i=0;i<carrito_n;i++) {
        actualizar_inventario(productos, nproductos, carrito[i].codigo, carrito[i].cantidad);
    }

    agregar_lineas_venta_a_archivo(VENTAS_FILE, num_factura, fecha, carrito, carrito_n, nombre_logeado);

    guardar_productos(PRODUCTOS_FILE, productos, nproductos);

    printf("Venta registrada con éxito. Factura #%d\n", num_factura);

    liberar_productos(productos);
    liberar_usuarios(usuarios);

    return 0;
}
