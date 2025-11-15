CC = gcc
CFLAGS = -Wall -Wextra -g
OBJS = main.o usuarios.o productos.o
TARGET = tienda

.PHONY: all clean asm objdump_all

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

main.o: main.c usuarios.h productos.h
	$(CC) $(CFLAGS) -c main.c

usuarios.o: usuarios.c usuarios.h
	$(CC) $(CFLAGS) -c usuarios.c

productos.o: productos.c productos.h
	$(CC) $(CFLAGS) -c productos.c

# Generar archivos .s (assembly) para cada fuente
asm: main.s usuarios.s productos.s

%.s: %.c
	$(CC) $(CFLAGS) -S $< -o $@

# Generar .o si no existen y luego objdump para regresar a .s desde .o
objdump_all: $(OBJS)
	@echo "Generando ensamblado a partir de .o con objdump..."
	objdump -d -M intel main.o > main_from_objdump.s
	objdump -d -M intel usuarios.o > usuarios_from_objdump.s
	objdump -d -M intel productos.o > productos_from_objdump.s
	@echo "Archivos main_from_objdump.s, usuarios_from_objdump.s, productos_from_objdump.s creados."

clean:
	rm -f $(OBJS) $(TARGET) *.s *_from_objdump.s
