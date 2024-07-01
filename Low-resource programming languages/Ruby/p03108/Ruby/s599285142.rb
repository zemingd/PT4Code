class Node
  attr_accessor :parent, :rank

  def initialize
    @parent = -1
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
      # p [@nodes[a].parent , @nodes[b].parent]
      @nodes[b].parent += @nodes[a].parent
      @nodes[a].parent = b
    else
      # p [@nodes[a].parent , @nodes[b].parent]
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

# n, q = gets.split.map(&:to_i)

# uft = UnionFindTree.new(n)
# q.times do |i|
  
#   com, x, y = gets.split.map(&:to_i)
  
#   if com == 0
#     uft.unite(x, y)
#   else
#     puts uft.same?(x, y) ? "Yes" : "No"
#     p [uft.size(x), uft.size(y)]
#   end
# end


N, M = gets.split.map(&:to_i)

class Bridge
  attr_accessor :first, :second

  def initialize
    @first = nil
    @second = nil
  end
end

bridges = (0...M).to_a.map { Bridge.new }

M.times do |i|
  tmp = gets.split.map(&:to_i)
  a = tmp[0]
  b = tmp[1]
  a -= 1
  b -= 1
  a, b = b, a if a > b
  bridges[i].first = a
  bridges[i].second = b
end
# p bridges

f = Array.new(N, N)
ans = Array.new(M, 0)

inco = N * ( N - 1 ) / 2 # inconvenience
# p ["inco", inco]

n = N
q = M

uft = UnionFindTree.new(n)
# p [uft.find(0), uft.find(1), uft.find(2), uft.find(3)]

q.times do |i|
  
  j = (M-1)-i
  ans[j] = inco
  
  x, y = bridges[j].first, bridges[j].second
  
  # p uft.same?(x, y)

  if !uft.same?(x, y)
    
    # p q = uft.find(x)
    # p r = uft.find(y)
    
    inco -= uft.size(x) * uft.size(y)
  
  end
  
  break if inco == 0
  
  uft.unite(x, y)
  
end

puts ans
