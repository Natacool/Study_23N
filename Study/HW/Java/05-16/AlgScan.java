package BasicJavaHw;

import java.util.Scanner;

public class AlgScan {
    public static void main(String[] args) {
            Scanner sc = new Scanner(System.in);

            System.out.print("Input an integer number: ");
            int num = sc.nextInt();


            sc.close();

            System.out.println("Decimal nummer: " + num);
            System.out.println("Octal nummer: " + Integer.toOctalString(num));
            System.out.println("Binary nummer: " + Integer.toBinaryString(num));
            System.out.println("Heximal nummer: " + Integer.toHexString(num));

    }
}
