package excercises;

import java.util.ArrayList;
import java.util.List;

public class Bingo {
    private Bingo() {
        throw new IllegalStateException("Utility class");
    }
    public static List<String> bingo (int n){
        List<String> bingoList = new ArrayList<>();

        for (int i = 1; i <= n; i++){
            if( i % 3 == 0 && i % 5 == 0 ){
                bingoList.add("Bingo!");
            }else if( i % 3 == 0 ){
                bingoList.add("Bin");
            }else if( i % 5 == 0 ){
                bingoList.add("Go");
            }else{
                bingoList.add( String.valueOf(i) );
            }
        }

        return bingoList;
    }
}
