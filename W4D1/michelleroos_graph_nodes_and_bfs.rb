class GraphNode

    def initialize
        @value = value
        @connections = []
    end

    def add_neighbor(node)
        @connections << node
    end
end

def bfs(starting_node, target_value)
    queue = [starting_node]
end