package excercises;

public class ReverseSentence {
    private ReverseSentence() {
        throw new IllegalStateException("Utility class");
    }
    public static String reverseSentence(String sentence){

        StringBuilder reversedSentence = new StringBuilder();

        String[] words = sentence.split(" ");

        for (int i = words.length - 1; i >= 0; i--){
            reversedSentence.append(words[i]);
            reversedSentence.append(" ");
        }

        return reversedSentence.toString();

    }
}
