# Prueba Técnica
# 1. Conceptos basicos de programación:
La solución esta en el archivo .pdf

# 2. Algoritmos:
Este proyecto fue desarrollado con Java 11

## Descripción
Este proyecto contiene tres ejercicios de programación en Java:

1. **Bingo**: Genera una lista de números del 1 al `n`, reemplazando los números divisibles por 3 con "Bin" y los divisibles por 5 con "Go". Si un número es divisible por ambos, se reemplaza con "Bingo!".

2. **Prime Numbers**: Encuentra los primeros `n` números primos.

3. **Reverse Sentence**: Invierte una oración dada palabra por palabra.

## Ejecución

Para ejecutar los ejercicios, simplemente ejecuta la clase `Main` en el paquete `main`:


## Detalles de Implementación
Cada ejercicio se encuentra en su propio archivo en el paquete excercises.
A continuación, se describen brevemente los detalles de implementación de cada uno:

1. **Bingo**
   * Clase: `Bingo`
   * Método Estático: `bingo(int n)`
   * Genera una lista de números del 1 al n, aplicando las reglas de reemplazo descritas anteriormente.

2. **Prime Numbers**
   * Clase: `PrimeNumber`
   * Métodos Estáticos: `isPrime(int n)` y `firstNPrimeNumber(int n)`
   * `isPrime(int n)` verifica si un número es primo.
   * `firstNPrimeNumber(int n)` devuelve una lista de los primeros n números primos.
3. **Reverse Sentence**
   * Clase: `ReverseSentence`
   * Método Estático: `reverseSentence(String sentence)`
   * Invierte una oración dada palabra por palabra.
   
Cada clase tiene un constructor privado para evitar la instanciación ya que solo contienen métodos estáticos.

# 3. Análisis de Modelado de datos:
Este apartado aborda el modelado de datos para una solución específica y consta de los siguientes archivos:

**skandia.sql:** Este archivo contiene las instrucciones SQL necesarias para crear la estructura de la base de datos en el sistema. Aquí se definen las tablas, relaciones y restricciones que formarán la base de datos.

**insert_data.sql:** En este archivo se encuentran las instrucciones SQL para la inserción de datos de prueba en las tablas previamente definidas. Estos datos son esenciales para llevar a cabo análisis y pruebas de la base de datos.

**consultas.sql:** El archivo de consultas SQL incluye las consultas específicas que se pueden ejecutar en la base de datos. Estas consultas son fundamentales para obtener información relevante y realizar análisis sobre los datos almacenados.

Es importante destacar que se debe seguir un orden específico al ejecutar estos archivos:

1. Ejecutar skandia.sql para crear la estructura de la base de datos.
2. Ejecutar insert_data.sql para insertar datos de prueba en las tablas.
3. Ejecutar las consultas deseadas contenidas en consultas.sql para analizar y obtener información relevante de la base de datos.

Este enfoque garantiza que la base de datos esté correctamente configurada y poblada con datos de prueba antes de realizar cualquier análisis o consulta.