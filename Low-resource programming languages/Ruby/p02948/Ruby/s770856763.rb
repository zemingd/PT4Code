class PriorityQueue
  attr_accessor(:node)
  
  def initialize(src = [])
    @node = []
    src.each do |e|
      push(e)
    end
  end

  def push(x)
    @node << x
    bottom_up
  end

  def pop
    res = @node.first
    top_down
    return res
  end
  
  def bottom_up
    i = @node.size - 1
    v = @node[i]
    while i > 0
      parent = (i - 1) >> 1
      break if @node[parent] >= v
      
      @node[parent], @node[i] = @node[i], @node[parent]
      i = parent
    end
    
    @node[i] = v
  end

  def top_down
    i = 0
    tmp = @node.pop
    while (i << 1) + 1 < @node.size
      lhs = (i << 1) + 1
      rhs = (i << 1) + 2
      m = lhs
      
      if rhs < @node.size && @node[lhs] < @node[rhs]
        m = rhs
      end
      
      break if @node[m] <= tmp
      @node[i] = @node[m]
      i = m
    end
    
    @node[i] = tmp unless @node.empty?
  end
end

n, m = $stdin.readline.chomp.split.map(&:to_i)
t = Array.new(m) { Array.new }
n.times do
  a, b = $stdin.readline.chomp.split.map(&:to_i)
  t[a - 1] << b
end

res = 0
pq = PriorityQueue.new
m.times do |i|
  t[i].each do |b|
    pq.push(b)
  end

  if !pq.node.empty?
    res += pq.pop
  end
end
puts res
