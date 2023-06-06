package BasicJavaHw;

public class LoopFor {
    public static void main(String[] args) {
       // 1 2 4 8 16 32 64 128 256 512

        for (int i = 0; i <= 9; i++) {
            System.out.print((int)Math.pow(2, i) + " ");
        }

        System.out.println();
        for (int i = 1; i <= 512 ; i = i + i) {
            System.out.print(i + " ");
        }
    }
}
