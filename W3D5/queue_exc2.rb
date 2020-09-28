# class Queue
#     def initialize
#         @queue = Array.new
#     end
#     def queue
#         @queue
#     end

#     def enqueue(el)
#         @queue << el  
#     end

#     def dequeue
#         @queue.shift
#     end

#     def peek
#         @queue.first
#     end
# end



class Queue
    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue << el
    end

    def dequeue
        @queue.shift
    end 

    def peek
        @queue.first
    end 
end
