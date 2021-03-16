class Stack # LIFO

    attr_reader :stack

    def initialize
        @stack = [] # Should be named differenty from 
    end

    def push(el)
        @stack.push(el)
    end

    def <<(el)
        @stack << el
    end

    def pop
        @stack.pop
    end

    def peek
        @stack.last
    end

    def inspect # override the built in inspect
        
    end

end

s = Stack.new