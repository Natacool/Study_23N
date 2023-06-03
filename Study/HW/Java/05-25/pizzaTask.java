package BasicJavaHw;

public class pizzaTask {
    public static void main(String[] args) {
        int d1 = 28;
        int d2 = 24;
        int kal1 = calcKal(d1);
        int kal2 = calcKal(d2);
        System.out.println("extra calories: " + (kal1 - kal2));
    }

    public static int calcKal(int d) {
        int r = d / 2;
        int kal = (int) (3.14 * Math.pow(r, 2) * 40);
        return kal;
    }
}
