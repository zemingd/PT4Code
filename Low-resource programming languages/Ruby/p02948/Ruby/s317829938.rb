class PQueue
  def initialize(elements=nil, &block) # :yields: a, b
    @que = []
    @cmp = block || lambda{ |a,b| a <=> b }
    replace(elements) if elements
  end

 protected

  #
  # The underlying heap.
  #
  attr_reader :que #:nodoc:

 public

  #
  # Priority comparison procedure.
  #
  attr_reader :cmp

  #
  # Returns the size of the queue.
  #
  def size
    @que.size
  end

  #
  # Alias of size.
  #
  alias length size

  #
  # Add an element in the priority queue.
  #
  def push(v)
    @que << v
    reheap(@que.size-1)
    self
  end

  #
  # Traditional alias for #push.
  #
  alias enq push

  #
  # Alias of #push.
  #
  alias :<< :push

  #
  # Get the element with the highest priority and remove it from
  # the queue.
  #
  # The highest priority is determined by the block given at instantiation
  # time.
  #
  # The deletion time is O(log n), with n is the size of the queue.
  #
  # Return nil if the queue is empty.
  #
  def pop
    return nil if empty?
    @que.pop
  end

  #
  # Traditional alias for #pop.
  #
  alias deq pop

  # Get the element with the lowest priority and remove it from
  # the queue.
  #
  # The lowest priority is determined by the block given at instantiation
  # time.
  #
  # The deletion time is O(log n), with n is the size of the queue.
  #
  # Return nil if the queue is empty.
  #
  def shift
    return nil if empty?
    @que.shift
  end

  #
  # Returns the element with the highest priority, but
  # does not remove it from the queue.
  #
  def top
    return nil if empty?
    return @que.last
  end

  #
  # Traditional alias for #top.
  #
  alias peek top

  #
  # Returns the element with the lowest priority, but
  # does not remove it from the queue.
  #
  def bottom
    return nil if empty?
    return @que.first
  end

  #
  # Add more than one element at the same time. See #push.
  #
  # The elements object must respond to #to_a, or be a PQueue itself.
  #
  def concat(elements)
    if empty?
      if elements.kind_of?(PQueue)
        initialize_copy(elements)
      else
        replace(elements)
      end
    else
      if elements.kind_of?(PQueue)
        @que.concat(elements.que)
        sort!
      else
        @que.concat(elements.to_a)
        sort!
      end
    end
    return self
  end

  #
  # Alias for #concat.
  #
  alias :merge! :concat

  #
  # Return top n-element as a sorted array.
  #
  def take(n=@size)
    a = []
    n.times{a.push(pop)}
    a
  end

  #
  # Returns true if there is no more elements left in the queue.
  #
  def empty?
    @que.empty?
  end

  #
  # Remove all elements from the priority queue.
  #
  def clear
    @que.clear
    self
  end

  #
  # Replace the content of the heap by the new elements.
  #
  # The elements object must respond to #to_a, or to be
  # a PQueue itself.
  #
  def replace(elements)
    if elements.kind_of?(PQueue)
      initialize_copy(elements)
    else
      @que.replace(elements.to_a)
      sort!
    end
    self
  end

  #
  # Return a sorted array, with highest priority first.
  #
  def to_a
    @que.dup
  end

  #
  # Return true if the given object is present in the queue.
  #
  def include?(element)
    @que.include?(element)
  end

  #
  # Push element onto queue while popping off and returning the next element.
  # This is qquivalent to successively calling #pop and #push(v).
  #
  def swap(v)
    r = pop
    push(v)
    r
  end

  #
  # Iterate over the ordered elements, destructively.
  #
  def each_pop #:yields: popped
    until empty?
      yield pop
    end
    nil
  end

  #
  # Pretty inspection string.
  #
  def inspect
    "<#{self.class}: size=#{size}, top=#{top || "nil"}>"
  end

  #
  # Return true if the queues contain equal elements.
  #
  def ==(other)
    size == other.size && to_a == other.to_a
  end

 private

  #
  #
  #
  def initialize_copy(other)
    @cmp  = other.cmp
    @que  = other.que.dup
    sort!
  end

  #
  # The element at index k will be repositioned to its proper place.
  #
  # This, of course, assumes the queue is already sorted.
  #
  def reheap(k)
    return self if size <= 1

    que = @que.dup

    v = que.delete_at(k)
    i = binary_index(que, v)

    que.insert(i, v)

    @que = que

    return self
  end

  #
  # Sort the queue in accorance to the given comparison procedure.
  #
  def sort!
    @que.sort! do |a,b|
      case @cmp.call(a,b)
      when  0, nil   then  0
      when  1, true  then  1
      when -1, false then -1
      else
        warn "bad comparison procedure in #{self.inspect}"
        0
      end
    end
    self
  end

  #
  # Alias of #sort!
  #
  alias heapify sort!

  #
  def binary_index(que, target)
    upper = que.size - 1
    lower = 0

    while(upper >= lower) do
      idx  = lower + (upper - lower) / 2
      comp = @cmp.call(target, que[idx])

      case comp
      when 0, nil
        return idx
      when 1, true
        lower = idx + 1
      when -1, false
        upper = idx - 1
      else
      end
    end
    lower
  end

end # class PQueue

N,M = gets.split.map(&:to_i)
jobs = []
N.times do
  jobs.push (gets.split.map(&:to_i))
end
jobs.sort!

pq = PQueue.new
sum = 0
(1..M).each do |i|
  loop do
    break if jobs.empty? || jobs[0][0] > i
    pq.push(jobs.shift[1])
  end
  sum += pq.pop.to_i
end

puts sum
