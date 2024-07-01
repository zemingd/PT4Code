class Heap
  def initialize
    @heap = [nil] # 1-origin
  end

  def push(n)
    @heap << n
    i = @heap.size - 1
    while i > 1 && @heap[parent(i)] < @heap[i]
      @heap[parent(i)], @heap[i] = @heap[i], @heap[parent(i)]
      i = parent(i)
    end
  end

  def pop
    return nil if @heap.size <= 1
    max = @heap[1]
    tmp = @heap.pop
    return max if @heap.size == 1
    @heap[1] = tmp
    max_heapify(1)
    max
  end

  def empty?
    @heap.size == 1
  end

  def inspect
    @heap[1..-1]
  end

  private

  def left(i)
    2 * i
  end

  def right(i)
    2 * i + 1
  end

  def parent(i)
    i / 2
  end

  def max_heapify(i)
    l = left(i)
    r = right(i)
    largest = i
    largest = l if l < @heap.size && @heap[l] > @heap[i]
    largest = r if r < @heap.size && @heap[r] > @heap[largest]
    if largest != i
      @heap[i], @heap[largest] = @heap[largest], @heap[i]
      max_heapify(largest)
    end
  end
end

def powerful_discount_tickets(m, a)
  heap = Heap.new
  a.each { |n| heap.push(n) }
  m.times do
    n = heap.pop
    heap.push(n / 2)
  end

  heap.inspect.inject(:+)
end

n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
puts powerful_discount_tickets(m, a)
