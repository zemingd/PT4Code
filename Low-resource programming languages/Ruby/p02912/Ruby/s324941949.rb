class PrioriyaQueue
  attr_accessor :heap
  def initialize(a)
    @heap = []
    a.each{|x| push x}
  end
  def push(x)
    current = @heap.size
    @heap[current] = x
    flag = true
    while current > 0 && flag
      parent = (current) >> 1
      if @heap[parent] < @heap[current]
        @heap[parent], @heap[current] = @heap[current], @heap[parent] 
        current = parent
      else
        flag = false
      end
    end
  end
  def pop
    @heap.shift
  end
  def sum
    @heap.inject(&:+)
  end
end

n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
q = PrioriyaQueue.new a
while m > 0
  t = q.pop
  t = t >> 1
  q.push(t)
  p q.heap
  m -= 1
end
puts q.sum.to_i
