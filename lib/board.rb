class Board

    attr_accessor :root

    def initialize
        @root = {}
    end

    def create_board(n = 0)
        return if n == 64
        add_node(Node.new(n))
        create_board(n + 1)
        
    end

    def add_node(node)
        @root[node.value] = node
    end

    def create_edge(node1, node2)
        @root[node1].add_edge(root[node2])
        @root[node2].add_edge(root[node1])
    end

    def show_board()
        node = @root
        until node.nil?
            print node
            node = node.next
        end
    end
        
end