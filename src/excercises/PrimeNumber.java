package excercises;

import java.util.ArrayList;
import java.util.List;

public class PrimeNumber {

    private PrimeNumber() {
        throw new IllegalStateException("Utility class");
    }
    public static boolean isPrime(int n){
        if( n <= 1 ){
            return false;
        }

        for ( int i = 2; i <= n/2; i++ ){
            if ( n % i == 0 ){
                return false;
            }
        }

        return true;

    }


    public static List<Integer> firstNPrimeNumber(int n){
        List<Integer> primeNumbers = new ArrayList<>();
        int i = 0;
        while(primeNumbers.size() <= n){
            if(isPrime(i)){
                primeNumbers.add(i);
            }
            i+=1;
        }


        return primeNumbers;
    }
}
