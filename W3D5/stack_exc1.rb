  # class Stack
  #   def initialize
  #     # create ivar to store stack here!
  #     @stack = Array.new
  #   end

  #   def stack
  #       @stack
  #   end

  #   def push(el)
  #     # adds an element to the stack
  #     @stack << el
  #   end

  #   def pop
  #     # removes one element from the stack
  #     @stack.pop
  #   end

  #   def peek
  #     # returns, but doesn't remove, the top element in the stack
  #     @stack.last
  #   end
  # end






    class Stack
    def initialize
      @var = []
    end

    def push(el)
      @var << el
    end

    def pop
      @var.pop
    end

    def peek
      @var.last
    end
  end