class Node

    def initialize(value, children = [])
        @value = value
        @children = children
    end

end

a = Node.new("a", [])
b = Node.new("b")
c = Node.new("c")


