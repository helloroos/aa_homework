class Queue # FIFO

    attr_reader :queue

    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue.push(el)
    end

    def push(el)
        @queue.push(el)
    end

    def <<(el)
        @queue.push(el)
    end

    def dequeue
        @queue.shift
    end

    def shift
        @queue.shift
    end

    def peek
        @queue.last
    end

end

q = Queue.new