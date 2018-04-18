package com.nanproduction;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) throws FileNotFoundException, UnsupportedEncodingException {
        // write your code here
        File inputFile = new File("input.txt");
        PrintWriter writer = new PrintWriter("output.txt", "UTF-8");

        Scanner input = new Scanner(inputFile);
        String line = "";
        String[] array = null;
        while (input.hasNext()) {
            line = input.nextLine();
            array = line.split(" ");
            if (line.contains("oae")) {
                //G = oae(G, v1,v2);
                writer.println("G = oae(G," + Integer.parseInt(array[0]) + "," + Integer.parseInt(array[2]) + ");");
            }
            if (line.contains("oat")) {
                writer.println("G = oat(G," + Integer.parseInt(array[0]) + "," + Integer.parseInt(array[2]) + ");");
            }
            if (line.contains("kem")) {
                writer.println("G = kem(G," + Integer.parseInt(array[0])+ "," + Integer.parseInt(array[2]) + ");");
            }
            if (line.contains("eet")) {
                writer.println("G = eet(G," + Integer.parseInt(array[0]) + "," + Integer.parseInt(array[1]) + ");");
            }
        }
        writer.close();
    }
}
