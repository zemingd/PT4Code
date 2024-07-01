class Node
  attr_accessor :parent, :rank

  def initialize
    @parent = -1 # Positive value means its parent,and Negative value means its size.
    @rank = 0
  end
end

class UnionFindTree
  def initialize(n)
    @nodes = (0..n).to_a.map { |i| Node.new }
  end

  def find(x)
    return @nodes[x].parent < 0 ? x : @nodes[x].parent = find(@nodes[x].parent)
  end

  def unite(a, b)
    a = find(a)
    b = find(b)
    return if a == b

    if @nodes[a].rank < @nodes[b].rank
      @nodes[b].parent += @nodes[a].parent
      @nodes[a].parent = b
    else
      @nodes[a].parent += @nodes[b].parent
      @nodes[b].parent = a
      @nodes[a].rank += 1 if @nodes[a].rank == @nodes[b].rank
    end
  end

  def same?(a, b)
    find(a) == find(b)
  end
  
  def size(a)
    -@nodes[find(a)].parent
  end

  # 確認用。アルゴリズムとは関係無い
  def parents
    @nodes.map(&:parent)
  end
end

N, M = gets.split.map(&:to_i)

class Bridge
  attr_accessor :first, :second

  def initialize
    @first = nil
    @second = nil
  end
  
  def nodes=(a)
    a[0], a[1] = a[1], a[0] if a[0] > a[1]
    @first = a[0]
    @second = a[1]
  end
  
end

bridges = (0...M).to_a.map { Bridge.new }

M.times do |i|
  bridge = gets.split.map(&:to_i)
  bridge.map! { |n| n - 1 }
  bridges[i].nodes = bridge
end
# p bridges

f = Array.new(N, N)
ans = Array.new(M, 0)

inco = N * ( N - 1 ) / 2 # inconvenience

n = N
q = M

uft = UnionFindTree.new(n)

q.times do |i|
  
  j = (M-1)-i
  ans[j] = inco
  
  x, y = bridges[j].first, bridges[j].second
  
  inco -= uft.size(x) * uft.size(y) if !uft.same?(x, y)
  break if inco == 0
  
  uft.unite(x, y)
  
end

puts ans
