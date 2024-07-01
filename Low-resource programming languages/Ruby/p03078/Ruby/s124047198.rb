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
    while i > 1 && @get_key.call(@heap[i / 2]) < @get_key.call(@heap[i])
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
      l <= @size && @get_key.call(@heap[l]) > @get_key.call(@heap[i]) ? l : i
    largest = r \
      if r <= @size && @get_key.call(@heap[r]) > @get_key.call(@heap[largest])
    unless largest == i
      t = @heap[i]
      @heap[i] = @heap[largest]
      @heap[largest] = t
      max_heapify(largest)
    end
  end
end

require 'set'

X, Y, Z, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
C = gets.split.map(&:to_i)

sorted_a = A.sort_by { |n| -n }
sorted_b = B.sort_by { |n| -n }
sorted_c = C.sort_by { |n| -n }

used = Set.new
pq = PriorityQueue.new { |(ai, bi, ci, sum)| sum }
pq.push([0, 0, 0, sorted_a[0] + sorted_b[0] + sorted_c[0]])
used.add([0, 0, 0])
K.times do
  ai, bi, ci, sum = pq.pop
  puts sum
  if ai + 1 < sorted_a.size
    key = [ai + 1, bi, ci]
    if !used.include?(key)
      sum = sorted_a[ai + 1] + sorted_b[bi] + sorted_c[ci]
      pq.push(key + [sum])
      used.add(key)
    end
  end
  if bi + 1 < sorted_b.size
    key = [ai, bi + 1, ci]
    if !used.include?(key)
      sum = sorted_a[ai] + sorted_b[bi + 1] + sorted_c[ci]
      pq.push(key + [sum])
      used.add(key)
    end
  end
  if ci + 1 < sorted_b.size
    key = [ai, bi, ci + 1]
    if !used.include?(key)
      sum = sorted_a[ai] + sorted_b[bi] + sorted_c[ci + 1]
      pq.push(key + [sum])
      used.add(key)
    end
  end
end
