package com.nanproduction.mst;

import java.io.*;
import java.util.ArrayList;
import java.util.Collection;

public class Main {

    public static void main(String[] args) throws FileNotFoundException {

        File sText = new File("Stext.txt");
        File wText = new File("Wtext.txt");

        Graph graph = new Graph(wText, sText);

        Collection<Edge> resultEdges = MST.kruskals(graph);
        ArrayList<Edge> result = null;
        if (resultEdges != null) {
            result = new ArrayList<Edge>(resultEdges);
        }else {
            System.out.println("oh :(");
        }

        int minCost = 0;
        if (result != null) {
            for (Edge e : result) {
                minCost += e.getWeight();
            }
        }
        System.out.println("Result - Min cost: "+minCost);

    }
}
