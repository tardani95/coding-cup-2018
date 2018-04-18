package com.nanproduction.mst;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Scanner;
import java.util.Set;

public class Graph {

    private Collection<Edge> edges = new HashSet<Edge>();
    private Set<Vertex> vertices = new HashSet<Vertex>();
    private Map<Vertex, Map<Vertex, Integer>> adjacencies = new HashMap<Vertex, Map<Vertex, Integer>>();

    /**
     * A class representing a graph, can be built from an edge list
     * <p>
     * The first int is the number of edges, following this are triples of
     * integers for each edge representing vertex u, vertex v, and the weight
     *
     * @param WtextFile Input file Wtext.txt
     * @param StextFile Input file Stext.txt
     */
    public Graph(File WtextFile, File StextFile) throws FileNotFoundException {
        Scanner inputS = new Scanner(StextFile);
        Scanner inputW = new Scanner(WtextFile);

        // init variables
        int count = 0;
        int ptpCount = 0;
        int pnCount = 0;
        int maxCost = 0;

        /*for (int i = 0; i < count; i++) {
            Vertex u = new Vertex(scan.nextInt());
            Vertex v = new Vertex(scan.nextInt());
            int weight = scan.nextInt();
            vertices.add(u);
            vertices.add(v);
            edges.add(new Edge(u, v, weight));

            if (!adjacencies.containsKey(u)) {
                adjacencies.put(u, new HashMap<>());
            }
            adjacencies.get(u).put(v, weight);

            if (!adjacencies.containsKey(v)) {
                adjacencies.put(v, new HashMap<>());
            }
            adjacencies.get(v).put(u, weight);
        }*/

        // read phone network connection
        int weight;

        for (int i = 0; i < 1000; ++i) {
            Vertex u = new Vertex(i);

            for (int j = i; j < 1000; ++j) {
                Vertex v = new Vertex(j);
                weight = inputS.nextInt();
                if (weight != 0) {
                    vertices.add(u);
                    vertices.add(v);
                    edges.add(new Edge(u, v, weight));

                    if (!adjacencies.containsKey(u)) {
                        adjacencies.put(u, new HashMap<Vertex, Integer>());
                    }
                    adjacencies.get(u).put(v, weight);

                    if (!adjacencies.containsKey(v)) {
                        adjacencies.put(v, new HashMap<Vertex, Integer>());
                    }
                    adjacencies.get(v).put(u, weight);

                    if (weight > maxCost) {
                        maxCost = weight;
                    }
                    pnCount++;
                }
                count++;
            }
        }
        inputS.close();

        // read ptp connections
        weight = 0;
        for (int i = 0; i < 1000; ++i) {
            Vertex u = new Vertex(i);
            for (int j = i; j < 1000; ++j) {
                Vertex v = new Vertex(j);
                if (inputW.nextInt() == 1) {
                    vertices.add(u);
                    vertices.add(v);
                    edges.add(new Edge(u, v, weight));

                    if (!adjacencies.containsKey(u)) {
                        adjacencies.put(u, new HashMap<>());
                    }
                    adjacencies.get(u).put(v, weight);

                    if (!adjacencies.containsKey(v)) {
                        adjacencies.put(v, new HashMap<>());
                    }
                    adjacencies.get(v).put(u, weight);

                    ptpCount++;
                }
                count++;
            }
        }
        inputW.close();

        // output statistics
        System.out.println(ptpCount + " ptp connections");
        System.out.println(pnCount + " pn connections");
        System.out.println("max cost in graph: " + maxCost);
        System.out.println(count + " integers read");

    }

    public Collection<Edge> getEdgeList() {
        return edges;
    }

    public Set<Vertex> getVertices() {
        return vertices;
    }

    public Map<Vertex, Integer> getAdjacencies(Vertex u) {
        return adjacencies.get(u);
    }
}