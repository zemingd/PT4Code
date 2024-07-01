class Heap
  attr_accessor :heap, :size

  def initialize
    @heap = []
    @size = 0
  end

  def add(n)
    i = size
    while i > 0
      parent_index = (i - 1) / 2
      break if n < heap[parent_index]

      heap[i] = heap[parent_index]
      i = parent_index
    end
    heap[i] = n
    @size += 1
  end

  def pop
    return if size <= 0
    max = heap[0]
    @size -= 1
    n = heap[size]
    i = 0
    while i * 2 + 1 < size
      child_index1 = i * 2 + 1
      child_index2 = i * 2 + 2
      if child_index2 < size && heap[child_index2] >= heap[child_index1]
        child_index1 = child_index2
      end
      break if heap[child_index1] < n

      heap[i] = heap[child_index1]
      i = child_index1
    end
    heap[i] = n
    max
  end
end

heap = Heap.new

n, m = gets.chomp.split.map(&:to_i)
gets.chomp.split.map(&:to_i).each do |a|
  heap.add(a)
end

m.times do
  heap.add(heap.pop / 2)
end

p heap.heap.inject(:+)
