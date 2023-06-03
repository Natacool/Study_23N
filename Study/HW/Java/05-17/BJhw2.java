package BasicJavaHw;


public class BJhw2 {
    public static void main(String[] args) {
        char q = '4';
        String preResult = String.valueOf(q);
        int result = Integer.parseInt(preResult);
        //int result = Integer.parseInt(String.valueOf(q));
        System.out.println(result + 6);

        int result2 = Character.getNumericValue(q);
        System.out.println(result2 + 6);

    }
}
