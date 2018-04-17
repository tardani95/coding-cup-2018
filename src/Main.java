import java.io.*;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) throws FileNotFoundException {
        Graph myproblem = new Graph();

        File sText = new File("Stext.txt");
        File wText = new File("Wtext.txt");
        Scanner inputS = new Scanner(sText);
        Scanner inputW = new Scanner(wText);

        int count = 0;
        int ptpcount = 0;

        while (inputW.hasNext()) {
            // is peer to peer connection between the cars
            if (inputW.nextInt() == 1) {
                //System.out.print("1");
                ptpcount++;
            }
            count++;
        }
        System.out.println("");
        System.out.println(ptpcount+" ptp connections");
        System.out.println(count + " integers read");
    }
}
