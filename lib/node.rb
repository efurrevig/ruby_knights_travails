class Node

    attr_accessor :value, :next, :visited

    def initialize(value)
        @value = value
        @next = nil
        @visited = false
        #what should each node point to?
    end

end