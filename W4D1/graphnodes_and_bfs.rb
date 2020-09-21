class GraphNode
    attr_accessor :val, :neighbours

    def initialize(val)
        @val = val
        @neighbours = []
    end

    def bfs(starting_node, target_value)
        visited = Set.new()

        queue = [starting_node]

        until queue.empty?
            node = queue.shift
            if node.val == target_value
                return node
            else  
                visited.add(node)
                node.neighbours.each {|neighbor| queue << neighbor unless visited.include?(neighbor)}
            end
        end

        nil
    end
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p bfs(a, "b")