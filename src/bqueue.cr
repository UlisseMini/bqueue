# Module BQueue contains the BQueue class
module BQueue
  VERSION = "0.1.0"

  # BQueue is a bounded LIFO queue, a queue with a maximum size.
  # when the size is exeeded the last item in the queue is removed.
  class BQueue(T)
    def initialize(max : Int32)
      if max < 1
        raise "max must be greater then zero (is #{max})"
      end
      @max = max
      @array = [] of T
    end

    def push(x)
      if @array.size >= @max
        @array.delete_at 0
      end

      @array.push x
    end

    def pop
      @array.pop
    end
  end
end
