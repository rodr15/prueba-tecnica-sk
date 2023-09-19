# Prueba Técnica

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

