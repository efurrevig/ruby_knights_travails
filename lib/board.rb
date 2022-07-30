class Board

    attr_accessor :root

    def initialize
        @root = []
    end

    def create_board(size, node = root)
        size.times do |i|
            size.times do |n|
                if @root == []
                    @root = Node.new([i, n])
                    node = @root
                else
                    
                    node.next = Node.new([i, n])
                    node = node.next

                end
                    
            end
        end
    end


    def show_board(node = @root)
        until node.nil?
            print node.value
            node = node.next
        end
    end
        
end