import java.io.*;
import java.util.Map;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) throws FileNotFoundException {
        Graph graph = new Graph();

        File sText = new File("Stext.txt");
        File wText = new File("Wtext.txt");
        Scanner inputS = new Scanner(sText);
        Scanner inputW = new Scanner(wText);

        // init variables
        int count = 0;
        int ptpCount = 0;
        int pnCount = 0;
        int maxCost = 0;

        // init nodes
        for (int i = 0; i < 1000; ++i) {
            graph.nodes.put(i, new Node(i));
        }

        // read ptp connections
        for (int i = 0; i < 1000; ++i) {
            for (int j = i; j < 1000; ++j) {
                if (inputW.nextInt() == 1) {
                    //System.out.print("1");
                    graph.nodes.get(i).connections.add(new Edge(graph.nodes.get(j), 0));
                    graph.nodes.get(j).connections.add(new Edge(graph.nodes.get(i), 0));

                    ptpCount++;
                }
                count++;
            }
        }

        // read phone network connection
        int weight;

        for (int i = 0; i < 1000; ++i) {
            for (int j = i; j < 1000; ++j) {
                weight = inputS.nextInt();
                if (weight != 0) {
                    graph.nodes.get(i).connections.add(new Edge(graph.nodes.get(j), 0));
                    graph.nodes.get(j).connections.add(new Edge(graph.nodes.get(i), 0));
                    if (weight > maxCost) {
                        maxCost = weight;
                    }
                    pnCount++;
                }
                count++;
            }

        }

        // output statistics
        System.out.println(ptpCount + " ptp connections");
        System.out.println(pnCount + " pn connections");
        System.out.println("max cost in graph: " + maxCost);
        System.out.println(count + " integers read");

        // test output for the graph edges
        /*for (Map.Entry<Integer, Node> entry : graph.nodes.entrySet()) {
            if(!entry.getValue().connections.isEmpty()){
                System.out.print(entry.getKey() + " - connections:\n\t");
                for (Edge temp : entry.getValue().connections) {
                    System.out.print(temp.end.name+ " ");
                }
                System.out.println();
            }
        }*/


        //TODO - implement such an algorithm to connect all nodes with min cost
    }
}
