# Prolog Par e Impar

## Descripción del Problema

Se crea una base de conocimientos que utiliza un pequeño conjunto de números enteros como en los siguientes hechos:

1. El $1$ es impar.
2. El $2$ es par.
3. El $3$ es impar.
4. El $4$ es par.
5. El $5$ es impar.
6. El $6$ es par.

Además se tiene una afirmación que cabe como una regla:

> Si $X$ es par e $Y$ es par, o si $X$ es impar e $Y$ es impar, entonces su suma es par.

> [!WARNING]
> No se probó nada de esto en Windows.

## Requisitos

En caso de usar Docker, únicamente necesitas construir la imagen. De lo contrario, es necesario [instalar Prolog](https://www.swi-prolog.org/download/stable) de forma local y tenerlo agregado al `PATH`.

## Instalación

1. Clona el repositorio:

```bash
git clone https://github.com/MoXcz/prolog-test
cd prolog-test
```

2. Si se está utilizando Docker (*recomendado*), crea la imagen:

```bash
docker build -t prolog-test .
```

## Ejecución

### Usando Docker

Ejecuta el contenedor:

```bash
docker run -it --rm prolog-test # Quita --rm para mantener el contenedor
```

El contenedor debería iniciarse automáticamente en la terminal de Prolog, en caso de que no, se puede iniciar Prolog manualmente dentro del contenedor o con la instalación local de Prolog:

```bash
swipl
?- [par_impar]. # Cargar el archivo par_impar.pl
```

## Ejemplo de Uso

Con el archivo `par_impar.pl` cargado, se pueden realizar las consultas para verificar si un número es par o impar basado en la regla proporionada en la descripción del problema:

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

