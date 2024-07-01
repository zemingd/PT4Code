class PriorityQueue
  def initialize
    @heap = []
    @node_num = 0
  end

  def push(x)
    i = @node_num # 自分のノード番号
    @node_num += 1
    while i > 0
      par = (i - 1) / 2 # 親のノード番号
      break if @heap[par][0] <= x[0]
      @heap[i] = @heap[par]
      i = par
    end
    @heap[i] = x
  end

  def pop()
    ret = @heap[0]
    @node_num -= 1
    x = @heap[@node_num]
    i = 0
    while i * 2 + 1 < @node_num
      a, b = i * 2 + 1, i * 2 + 2
      a = b if b < @node_num && @heap[b][0] < @heap[a][0]
      break if @heap[a][0] >= x[0]
      @heap[i] = @heap[a]
      i = a
    end
    @heap[i] = x
    return ret
  end

  def get()
    @heap[0]
  end
end

N,M = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

q = PriorityQueue.new
a.each do |ai|
  q.push([-ai, 1])
end
M.times do
  b, c = gets.split.map(&:to_i)
  q.push([-c, b])
end

cnt = N
ans = 0
while cnt > 0
  c, b = q.pop
  c = -c
  if b < cnt
    ans += b*c
    cnt -= b    
  else
    ans += c * cnt
    cnt = 0
  end
end

puts ans
