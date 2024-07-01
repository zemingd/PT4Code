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
  
  def empty?
    @sz == 0
  end
  
  def all
    @heap
  end
end

n, m = gets.to_s.split.map{|t| t.to_i }
dr   = Array.new(n){ gets.to_s.split.map{|t| t.to_i } }.sort_by{|_,r|-r}.sort_by{|d,_|d}

pq = PriorityQueue.new

ans = 0
cur = 0
(1..m).each do |i|
  
  while dr[cur] && dr[cur][0] == i do
    pq.push -dr[cur][1]
    cur += 1
  end
  pq.empty? || ans += -pq.pop
end

puts ans