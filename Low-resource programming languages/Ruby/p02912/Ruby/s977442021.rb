class PriorityQueue
  MIN = -(1 << 60)

  attr_reader :size

  def initialize(capacity = nil, &block)
    @size = 0
    @heap = capacity.nil? ? Array.new : Array.new(capacity)
    @key = block || :itself.to_proc
  end

  def empty?
    size == 0
  end

  def push(x)
    i = @size
    @size += 1
    while i > 0
      parent = (i - 1) / 2
      break if (@key.call(@heap[parent]) <=> @key.call(x)) >= 0
      @heap[i] = @heap[parent]
      i = parent
    end
    @heap[i] = x
    nil
  end

  def pop
    return nil if @size <= 0
    ret = @heap[0]
    x = @heap[@size - 1]
    @size -= 1
    i = 0
    while i * 2 + 1 < @size
      l = i * 2 + 1
      r = i * 2 + 2
      largest = l
      largest = r \
        if r < @size && (@key.call(@heap[r]) <=> @key.call(@heap[largest])) > 0
      break if (@key.call(x) <=> @key.call(@heap[largest])) >= 0
      @heap[i] = @heap[largest]
      i = largest
    end
    @heap[i] = x
    ret
  end

  def top
    return nil if @size <= 0
    @heap[0]
  end

  def to_a
    @heap.take(@size)
  end
end

N, M = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)

pq = PriorityQueue.new { |(a, _)| a }
as.each do |a|
  pq.push([a, a.to_f])
end

rest_count = M
while rest_count > 0
  a, raw = pq.pop
  pq.push([(raw / 2).to_i, raw / 2])
  rest_count -= 1
end
ans = pq.to_a.reduce(0) { |acc, (a, _)| acc + a }
puts ans
