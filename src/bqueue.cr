# Module BQueue contains the BQueue class
module BQueue
  VERSION = "0.1.0"

  # BQueue is a bounded LIFO queue, a queue with a maximum size.
  # when the size is exeeded the last item in the queue is removed.
  class BQueue(T) < Deque(T)
    def initialize(max : Int32)
      if max < 1
        raise "max must be greater then zero (is #{max})"
      end
      @max = max

      super
    end

    def push(*args)
      args.each { |x| push x }
    end

    def push(x)
      if size() >= @max
        delete_at(0)
      end

      super
    end
  end
end
