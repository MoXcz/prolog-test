# Prolog Test

Este es un proyecto de prueba para el lenguaje de programación Prolog. El objetivo es demostrar la capacidad de Prolog para resolver problemas lógicos y realizar inferencias.

> [!WARNING]
> No se probó nada de esto en Windows.

## Requisitos

En caso de usar Docker, únicamente crea la imagen. De otra manera, [instala Prolog](https://www.swi-prolog.org/download/stable) de manera local y añádelo a tu `PATH`.

## Instalación

1. Clona este repositorio:

```bash
git clone https://github.com/MoXcz/prolog-test
cd prolog-test
````

2. Si se está utilizando Docker (*recomendado*), crea la imagen de Docker:

```bash
docker build -t prolog-test .
```

## Ejecución

### Usando Docker

Crea un contenedor a partir de la imagen:

```bash
docker run -it --rm prolog-test # Quita --rm para mantener el contenedor
```

El contenedor debería iniciarse automáticamente en la terminal de Prolog. Si no es así, puedes iniciarlo manualmente dentro del contenedor o con la Instalación local de Prolog:

```bash
swipl
?- [par_impar]. # Cargar el archivo par_impar.pl
```

## Ejemplo de uso

Con el archivo `par_impar.pl` cargado realiza consultas para verificar si un número es par o impar. Aquí hay algunos ejemplos:

```prolog
?- par(4).
true.

?- par(5).
false.

?- suma_par(3, 4).
false.

?- suma_par(2, 4).
true.
```

