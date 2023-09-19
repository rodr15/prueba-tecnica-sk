package main;


import excercises.Bingo;
import excercises.PrimeNumber;
import excercises.ReverseSentence;


public class Main {
    public static void main(String[] args) {

        System.out.println("\nA. BINGO : ");
        System.out.println(Bingo.bingo(100));


        System.out.println("\nB. Prime numbers : ");
        System.out.println(PrimeNumber.firstNPrimeNumber(50));

        String sentence = "prueba de lógica";
        System.out.println("\nC. Reverse sentence: ");

        System.out.printf("Sentence: %s%n", sentence );
        System.out.printf("Reversed Sentence: %s%n", ReverseSentence.reverseSentence(sentence));
    }
}