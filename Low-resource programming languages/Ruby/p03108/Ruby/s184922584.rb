(N, M) = gets.split.map(&:to_i)

bridge = []

M.times do
  bridge << gets.split.map(&:to_i)
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
    @nodes = (0..n).map { |i| Node.new(i) }
  end

  def unite(a, b)
    pa = find(a)
    pb = find(b)
    return if pa == pb

    if @nodes[pa].rank < @nodes[pb].rank
      @nodes[pb].parent = pa
    else
      @nodes[pa].parent = pb
      @nodes[pa].rank += 1 if @nodes[pa].rank == @nodes[pb].rank
    end
  end

  def same?(a, b)
    find(a) == find(b)
  end

  def find(x)
    return x if @nodes[x].parent == x
    @nodes[x].parent = find(@nodes[x].parent)
  end

  def parents
    @nodes.map(&:parent)
  end
end

ans = [N * (N - 1) / 2]


tree = UnionFindTree.new(N - 1)
bridge.reverse.each_with_index do |b, i|
  if tree.same?(b[0] - 1, b[1] - 1)
    tree.unite(b[0] - 1, b[1] - 1)
    ans << ans[i]
  else
    parents = tree.parents
    ac = parents.count(tree.find(b[0] - 1))
    bc = parents.count(tree.find(b[1] - 1))
    ans << ans[i] - ac * bc
    tree.unite(b[0] - 1, b[1] - 1)
  end
end

ans[0...M].reverse.each do |a|
  puts a
end
