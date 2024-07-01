class PriorityQueue
  MIN = -(1 << 60)

  attr_reader :size

  def initialize(&block)
    @size = 0
    @heap = Array.new
    @get_key = block || :itself.to_proc
  end

  def empty?
    size == 0
  end

  def pop
    return nil if @size <= 0
    max = @heap[1]
    @heap[1] = @heap[@size]
    @size -= 1
    max_heapify(1)
    max
  end

  def push(x)
    @size += 1
    i = @size
    @heap[i] = x
    while i > 1 && (@get_key.call(@heap[i / 2]) <=> @get_key.call(@heap[i])) < 0
      t = @heap[i / 2]
      @heap[i / 2] = @heap[i]
      @heap[i] = t
      i = i / 2
    end
  end

  def top
    return nil if @size <= 0
    @heap[1]
  end

  def to_a
    return [] if @size == 0
    @heap[1..@size]
  end

  private

  def max_heapify(i)
    l = 2 * i
    r = 2 * i + 1
    largest =
      l <= @size && (@get_key.call(@heap[l]) <=> @get_key.call(@heap[i])) > 0 ? l : i
    largest = r \
      if r <= @size && (@get_key.call(@heap[r]) <=> @get_key.call(@heap[largest])) > 0
    unless largest == i
      t = @heap[i]
      @heap[i] = @heap[largest]
      @heap[largest] = t
      max_heapify(largest)
    end
  end
end


N, M = gets.split.map(&:to_i)
abs = M.times.map { gets.split.map(&:to_i) }
pq = PriorityQueue.new { |(a, b)| [-a, b] }
abs.each do |(a, b)|
  pq.push([a, b])
end
pq.push([1 << 60, 1 << 60])

ans = 0
a, b = pq.pop
left = a
right = b
while !pq.empty?
  a, b = pq.pop
  if a == left
    right = b if b < right
  else
    left = a
    if a >= right
      ans += 1
      right = b
    else
      right = b if b < right
    end
  end
end
puts ans
