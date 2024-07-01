class Heap
  attr_reader :size
  def initialize
    @heap = []
    @size = 0
  end
  def sum
    @heap.inject(:+)
  end
  def push(n)
    i = @size
    while i > 0
      pid = (i - 1) / 2
      break if n >= @heap[pid]
      @heap[i] = @heap[pid]
      i = pid
    end
    @heap[i] = n
    @size += 1
  end
  def pop
    top = @heap[0]
    @size -= 1
    n = @heap[@size]
    i = 0
    while i * 2 + 1 < @size
      cid1 = i * 2 + 1
      cid2 = cid1 + 1
      if cid2 < @size && @heap[cid2] < @heap[cid1]
        cid1 = cid2
      end
      break if @heap[cid1] >= n
      @heap[i] = @heap[cid1]
      i = cid1
    end
    @heap[i] = n
    top
  end
end

n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = Heap.new()
a.each{|x| b.push(x)}
c = Heap.new()
m.times do
  u, v = gets.split.map(&:to_i)
  u.times do
    c.push(-v)
  end
end
while c.size != -1
  x = b.pop
  y = c.pop
  if x < -y
    b.push(-y)
  else
    b.push(x)
    break
  end
end
puts b.sum