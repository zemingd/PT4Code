N, M = gets.split.map(&:to_i)
A = Array.new(M)
B = Array.new(M)
M.times do |i|
  A[i], B[i] = gets.split.map(&:to_i)
end

class Node
  attr_accessor :parent, :rank

  def initialize(n)
    @parent = n
    @rank = 0
  end
end

class UnionFindTree
  def initialize(n)
    @nodes = (0..n).to_a.map { |i| Node.new(i) }
  end

  def find(x)
    return x if @nodes[x].parent == x

    return @nodes[x].parent = find(@nodes[x].parent)
  end

  def unite(a, b)
    a = find(a)
    b = find(b)
    return if a == b

    if @nodes[a].rank < @nodes[b].rank
      @nodes[a].parent = b
    else
      @nodes[b].parent = a
      @nodes[a].rank += 1 if @nodes[a].rank == @nodes[b].rank
    end
  end

  def same?(a, b)
    find(a) == find(b)
  end

  def parents
    @nodes.map(&:parent)
  end
end

answers = []
tree = UnionFindTree.new(N)
(M-1).downto(0) do |i|
  c = 0

  iscnt = []
  N.times do |i|
    group = tree.find(i)
    iscnt[group] ||= 0
    iscnt[group] += 1
  end
  iscnt.compact!

  iscnt_size = iscnt.size
  ans = 0
  0.upto(iscnt_size - 2) do |i|
    (i + 1).upto(iscnt_size - 1) do |j|
      ans += iscnt[i] * iscnt[j]
    end
  end
  answers << ans

  tree.unite(A[i] - 1, B[i] - 1)
end

answers.reverse_each do |ans|
  puts ans
end