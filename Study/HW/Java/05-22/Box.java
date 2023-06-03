package BasicJavaHw;

public class Box {
    public static void main(String[] args) {
        Box q = new Box(3, 4, 5);
    }

    private int width;
    private int height;
    private int length;

    public Box(int widthInput, int height, int length) {
        width = widthInput;
        this.height = height;
        this.length = length;
        long volume = calcVol();
        System.out.print("Volume: " + (long) volume);
    }

    public void printCarProperties() {
        System.out.println(width);
        System.out.println(height);
        System.out.println(length);
    }

    public long calcVol() {

        return (long) (width * height * length);
    }
}