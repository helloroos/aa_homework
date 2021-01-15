class Stack

    attr_reader :stack_var

    def initialize
        stack_var = []
    end

    def push(el)
        stack_var.push(el)
    end

    def pop
        stack_var.pop
    end

    def peek
        stack_var.last
    end

end

class Queue

    attr_reader :stack_var

    def initialize
        stack_var = []
    end

    def set(key, value)
    end

    def get(key)
    end

    def delete(key)
    end

    def show
    end

end