class PriorityQueue
  def initialize
    @heap = [nil]
  end

  def up_heap(x)
    @heap << x
    idx = @heap.size - 1

    while idx != 1
      parent = idx / 2
      break if @heap[idx] < @heap[parent]

      @heap[idx], @heap[parent] = @heap[parent], @heap[idx]
      idx = parent
    end
  end

  def down_heap
    size = @heap.size
    return if size == 1
    return @heap.pop if size == 2

    max = @heap[1]
    @heap[1] = @heap.pop
    size -= 1
    idx = 1

    while idx * 2 < size
      l = idx * 2
      r = idx * 2 + 1

      if @heap[r]
        child = @heap[l] > @heap[r] ? l : r
      else
        child = l
      end

      break if @heap[idx] > @heap[child]

      @heap[idx], @heap[child] = @heap[child], @heap[idx]
      idx = child
    end

    max
  end

  def to_a
    @heap.shift
    @heap
  end

  alias_method :<<, :up_heap
  alias_method :push, :up_heap
  alias_method :shift, :down_heap
end

n, m = gets.split.map(&:to_i)
q = PriorityQueue.new
gets.split.map(&:to_i).each { |e| q << e }

m.times { q.push(q.shift / 2) }

puts q.to_a.inject(:+)