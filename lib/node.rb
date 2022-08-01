class Node

    attr_accessor :value, :next, :visited

    def initialize(value)
        @value = value
        @adjacent_nodes = []
        @visited = false
        #what should each node point to?
    end

    def add_edge(adjacent_node)
        @adjacent_nodes << adjacent_node
    end

end