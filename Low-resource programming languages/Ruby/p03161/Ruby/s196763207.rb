class PQueue
  Item = Struct.new(:value, :priority)
  def initialize
    @heap = [nil]
  end
  
  def empty?
    @heap.size == 1
  end
  
  def enq(value, priority)
    i = @heap.size
    e = Item.new(value, priority)
    while i > 1
      j = i / 2
      break if @heap[j].priority <= e.priority
      @heap[i] = @heap[j]
      i /= 2
    end
    @heap[i] = e
  end
  
  def deq
    raise if @heap.size == 1
    
    e = @heap[1]
    t = @heap.pop
    return [e.value, e.priority] if @heap.size == 1
    
    i = 1
    while 2 * i < @heap.size
      j = 2 * i
      j += 1 if j + 1 < @heap.size && @heap[j].priority > @heap[j + 1].priority

      break if t.priority < @heap[j].priority
      @heap[i] = @heap[j]
      i = j
    end
    @heap[i] = t
    [e.value, e.priority]
  end
end

N, K = gets.split.map(&:to_i)
H = gets.split.map(&:to_i)

def min(a,b); a < b ? a : b; end
dp = Array.new(N,Float::INFINITY)
used = Array.new(N)

pq = PQueue.new
pq.enq(0, 0)

until pq.empty?
  i, cost = pq.deq
  
  next if used[i]
  used[i] = true

  (i .. min(i + K, N - 1)).each do |j|
    next if used[j]
    up = (H[j] - H[i]).abs
    if dp[j] > cost + up
      dp[j] = cost + up
      pq.enq(j, cost + up)
    end
  end
end
puts dp[N - 1]

