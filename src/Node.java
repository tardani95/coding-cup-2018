import java.util.*;

public class Node {
    public int name;
    public List<Edge> connections = new ArrayList<>();

    public Node(int name) {
        this.name = name;
    }
}
