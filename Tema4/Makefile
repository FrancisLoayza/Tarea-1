# Compilador y flags
CC = gcc
CFLAGS = -Wall -Wextra -g

# Carpeta de objetos y ensamblador
BUILD = ../Tema3

# Archivos fuente
SRC = ../Tema1/Main.c ../Tema1/productos.c ../Tema1/usuarios.c

# Archivos objeto
OBJS = $(BUILD)/Main.o $(BUILD)/productos.o $(BUILD)/usuarios.o

# Ejecutable en Tema1
TARGET = ../Tema1/programa

# Archivos .s generados con gcc -S
ASM = $(BUILD)/Main.s $(BUILD)/productos.s $(BUILD)/usuarios.s

# Archivos .s generados con objdump
OBJDUMP_ASM = $(BUILD)/Main_from_objdump.s $(BUILD)/productos_from_objdump.s $(BUILD)/usuarios_from_objdump.s

# ===========================
# Reglas por defecto
.PHONY: all clean asm objdump_all

all: $(TARGET) asm objdump_all

# ===========================
# Compilar ejecutable desde objetos en BUILD
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

# ===========================
# Compilar objetos desde fuentes
$(BUILD)/Main.o: ../Tema1/Main.c ../Tema1/usuarios.h ../Tema1/productos.h
	$(CC) $(CFLAGS) -c ../Tema1/Main.c -o $(BUILD)/Main.o

$(BUILD)/usuarios.o: ../Tema1/usuarios.c ../Tema1/usuarios.h
	$(CC) $(CFLAGS) -c ../Tema1/usuarios.c -o $(BUILD)/usuarios.o

$(BUILD)/productos.o: ../Tema1/productos.c ../Tema1/productos.h
	$(CC) $(CFLAGS) -c ../Tema1/productos.c -o $(BUILD)/productos.o

# ===========================
# Generar archivos .s (assembly) con gcc -S
asm: $(ASM)

$(BUILD)/Main.s:
	$(CC) $(CFLAGS) -S ../Tema1/Main.c -o $(BUILD)/Main.s

$(BUILD)/usuarios.s:
	$(CC) $(CFLAGS) -S ../Tema1/usuarios.c -o $(BUILD)/usuarios.s

$(BUILD)/productos.s:
	$(CC) $(CFLAGS) -S ../Tema1/productos.c -o $(BUILD)/productos.s

# ===========================
# Generar archivos .s desde .o con objdump
objdump_all: $(OBJS)
	@echo "Generando ensamblado a partir de .o con objdump..."
	objdump -d -M intel $(BUILD)/Main.o      > $(BUILD)/Main_from_objdump.s
	objdump -d -M intel $(BUILD)/usuarios.o  > $(BUILD)/usuarios_from_objdump.s
	objdump -d -M intel $(BUILD)/productos.o > $(BUILD)/productos_from_objdump.s
	@echo "Archivos *_from_objdump.s creados."

# ===========================
# Limpiar todo lo generado
clean:
	rm -f $(OBJS) $(TARGET)
	rm -f $(BUILD)/*.s $(BUILD)/*_from_objdump.s
