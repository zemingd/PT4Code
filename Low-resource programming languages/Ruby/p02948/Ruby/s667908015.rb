class PriorityQueue
  
  def initialize
    @heap = Array.new
    @sz = 0
  end
  
  def push x
    i = @sz
    @sz += 1
    while i > 0 do
      p = ( i - 1 ) / 2
      break if @heap[p] <= x
      @heap[i] = @heap[p]
      i = p
    end
    @heap[i] = x
  end
  
  def pop
    
    ret = @heap[0]
    x = @heap[@sz-=1]
    
    i = 0
    while i * 2 + 1 < @sz do
      a = i * 2 + 1
      b = i * 2 + 2
      a = b if b < @sz && @heap[b] < @heap[a]
      break if @heap[a] >= x
      @heap[i] = @heap[a]
      i = a
    end
    
    @heap[i] = x
    @heap.delete_at(-1)
    ret
  end
  
  def top
    @heap[0]
  end
  
  def any?
    @sz > 0
  end
  
  def empty?
    @sz == 0
  end
  
  def all
    @heap
  end
end
 
n, m = gets.to_s.split.map{|t| t.to_i }
# dr   = Array.new(n){ gets.to_s.split.map{|t| t.to_i } }.sort_by{|d,_|d}

ws = Array.new(m+1){ [] }
n.times do
  a, b = gets.to_s.split
  a, b = a.to_i, b.to_i
  # a <= m and ws[a] << b
  ws[a] << b if a <= m
end
# p ws
pq = PriorityQueue.new
 
ans = 0
cur = 0
(1..m).each do |i|
  
  ws[i].each{ |v| pq.push(-v) }
  pq.any? and ans -= pq.pop
  # p pq
end

puts ans