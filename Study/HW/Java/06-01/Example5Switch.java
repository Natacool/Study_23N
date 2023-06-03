package BasicJavaHw;

import java.util.Scanner;

public class Example5Switch {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Choose a button (1-espresso, 2-americano, 3-cappuccino, 4-tea): ");
        int choice = sc.nextInt();
        sc.close();

        switch (choice) {
            case 1:
                System.out.println("Your selection is espresso");
                System.out.println(getEspresso() + "\n" + getFinalMessage());
                break;
            case 2:
                System.out.println("Your selection is americano");
                System.out.println(getAmericano());
                break;
            case 3:
                System.out.println("Your selection is cappuccino");
                System.out.println(getCappuccino());
                break;
            case 4:
                System.out.println("Your selection is tea");
                System.out.println(getTea());
                break;
            default:
                System.out.println("error");
                break;
        }
    }

    public static String getEspresso () {
            return "\tespresso in process";
        }

    public static String getAmericano() {

        String result = getEspresso();
        result += "\n";
        result += getWater();
        result += "\n";
        result += getFinalMessage();

        return result;
    }

    public static String getCappuccino() {

        String result = getEspresso();
        result += "\n";
        result += "\tadding some foam milk";
        result += "\n";
        result += getFinalMessage();

        return result;
    }

    public static String getTea() {

        String result = "\tselecting tea package";
        result += "\n";
        result += getWater();
        result += "\n";
        result += getFinalMessage();

        return result;
    }

    public static String getWater() {
        return "\tadding some water";
    }

    public static String getFinalMessage() {
        return "Your drink is ready";
    }

}



