# frozen_string_literal: true

n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

# heap
class Heap
  def initialize(n, &func)
    @heap = Array.new(n) { 0 }
    @sz = 0
    @func = func
  end

  def size
    @sz
  end

  def empty?
    @sz.zero?
  end

  def push(x)
    i = @sz
    @sz += 1
    while i > 0
      p = (i - 1) / 2
      break if @func.call(@heap[p], x)

      @heap[i] = @heap[p]
      i = p
    end
    @heap[i] = x
  end

  def pop
    ret = @heap[0]
    @sz -= 1
    x = @heap[@sz]
    i = 0
    while i * 2 + 1 < @sz
      a = i * 2 + 1
      b = i * 2 + 2
      a = b if b < @sz && @func.call(@heap[b], @heap[a])

      break if !@func.call(@heap[a], x)

      @heap[i] = @heap[a]
      i = a
    end
    @heap[i] = x
    ret
  end

  def top
    @heap[0]
  end
end

heap = Heap.new(n){|x, y| x > y}

a.each do |e|
  heap.push e
end

m.times do
  heap.push(heap.pop / 2)
end
sum = 0
until heap.empty?
  sum += heap.pop
end
puts sum
