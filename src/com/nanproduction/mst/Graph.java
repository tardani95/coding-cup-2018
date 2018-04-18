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
	 * 
	 * The first int is the number of edges, following this are triples of
	 * integers for each edge representing vertex u, vertex v, and the weight
	 * 
	 * @param WtextFile
	 * 			Input file Wtext.txt
	 * @param StextFile
	 * 			Input file Stext.txt
	 */
	public Graph(File WtextFile, File StextFile) throws FileNotFoundException {
		Scanner inputS = new Scanner(StextFile);
		Scanner inputW = new Scanner(WtextFile);
		Scanner scan = new Scanner(System.in);

		int count = scan.nextInt();
		for (int i = 0; i < count; i++) {
			Vertex u = new Vertex(scan.nextInt());
			Vertex v = new Vertex(scan.nextInt());
			int weight = scan.nextInt();
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
		}






		inputW.close();
		inputS.close();
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