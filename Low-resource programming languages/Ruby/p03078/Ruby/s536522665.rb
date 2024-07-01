class Heap
  def initialize
    @heap = [nil] # 1-origin
  end

  def push(n)
    @heap << n
    i = @heap.size - 1
    while i > 1 && value(@heap[parent(i)]) < value(@heap[i])
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
    @heap
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
    largest = l if l < @heap.size && value(@heap[l]) > value(@heap[i])
    largest = r if r < @heap.size && value(@heap[r]) > value(@heap[largest])
    if largest != i
      @heap[i], @heap[largest] = @heap[largest], @heap[i]
      max_heapify(largest)
    end
  end

  def value(element)
    element.value
  end
end

class ABC
  attr_reader :value, :a_i, :b_i, :c_i

  def initialize(value, a_i, b_i, c_i)
    @value = value
    @a_i = a_i
    @b_i = b_i
    @c_i = c_i
  end

  def to_key
    "#{@a_i}:#{@b_i}:#{@c_i}"
  end
end

def cake123(k, a, b, c)
  a.sort_by! { |x| -1 * x }
  b.sort_by! { |x| -1 * x }
  c.sort_by! { |x| -1 * x }

  heap = Heap.new
  used = {}
  max = ABC.new(a[0] + b[0] + c[0], 0, 0, 0)
  used[max.to_key] = true
  heap.push(max)

  k.times do
    abc = heap.pop
    puts abc.value

    [
      [abc.a_i + 1, abc.b_i, abc.c_i],
      [abc.a_i, abc.b_i + 1, abc.c_i],
      [abc.a_i, abc.b_i, abc.c_i + 1],
    ].each do |a_i, b_i, c_i|
      next if a_i >= a.size || b_i >= b.size || c_i >= c.size
      abc = ABC.new(a[a_i] + b[b_i] + c[c_i], a_i, b_i, c_i)
      next if used[abc.to_key]
      used[abc.to_key] = true
      heap.push(abc)
    end
  end
end

x, y, z, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)
cake123(k, a, b, c)