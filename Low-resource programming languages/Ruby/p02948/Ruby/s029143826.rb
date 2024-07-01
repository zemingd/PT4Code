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
    while i > 1 && (@get_key.call(@heap[i / 2]) <=> @get_key.call(@heap[i])) == -1
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
      l <= @size && (@get_key.call(@heap[l]) <=> @get_key.call(@heap[i])) == 1 ? l : i
    largest = r \
      if r <= @size && (@get_key.call(@heap[r]) <=> @get_key.call(@heap[largest])) == 1
    unless largest == i
      t = @heap[i]
      @heap[i] = @heap[largest]
      @heap[largest] = t
      max_heapify(largest)
    end
  end
end


N, M = gets.split.map(&:to_i)
ab_list = N.times.map { gets.split.map(&:to_i) }

pq = PriorityQueue.new do |(a, b)|
  [b, a]
end
ab_list.each { |(a, b)| pq.push([a, b]) }
ans = 0
M.times do |i|
  break if pq.empty?
  break if pq.top[0] + i > M
  a, b = pq.pop
  while true
    if i + a <= M
      ans += b
      break
    end
    break if pq.empty?
    a, b = pq.pop
  end
end
puts ans
