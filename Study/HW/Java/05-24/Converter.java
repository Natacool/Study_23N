package BasicJavaHw;

import java.util.Scanner;

public class Converter {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Input degrees Celsius : ");
        double Celsius = sc.nextDouble();
        sc.close();

        convertCtoK(Celsius);
        System.out.println(Celsius + "°C  = " + convertCtoK2(Celsius) + "°K ");

        convertCtoF(Celsius);
        System.out.println(Celsius + "°C  = " + convertCtoF2(Celsius) + "°F ");

    }

    public static void convertCtoK(double Celsius) {
        double Kelvin;
        Kelvin = Celsius + 273.15;
        System.out.println(Celsius + "°C  = " + Kelvin + "°K - output from void function" );
    }

    public static double convertCtoK2(double Celsius) {
        double Kelvin;
        Kelvin = Celsius + 273.15;
        return Kelvin;
    }

    public static void convertCtoF(double Celsius) {
        double Fahrenheit;
        Fahrenheit = 9 / 5 * Celsius + 32;
        System.out.println(Celsius + "°C  = " + Fahrenheit + "°F - output from void function" );
    }

    public static double convertCtoF2(double Celsius) {
        double Fahrenheit;
        Fahrenheit = 9 / 5 * Celsius + 32;
        return Fahrenheit;
    }
}
