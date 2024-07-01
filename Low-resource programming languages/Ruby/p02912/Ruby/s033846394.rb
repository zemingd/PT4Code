class PrioriyaQueue
  def initialize(a)
    @heap = []
    a.each{|x| push x}
  end
  def push(x)
    current = @heap.size
    @heap[current] = x
    flag = true
    while current > 0 && flag
      parent = (current / 2).floor
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
a = gets.split.map(&:to_f)
q = PrioriyaQueue.new a
while m > 0
  q.push((q.pop / 2).floor)
  m -= 1
end
puts q.sum.to_i
