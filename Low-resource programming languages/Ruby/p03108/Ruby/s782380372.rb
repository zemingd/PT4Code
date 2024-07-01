class Node
  attr_accessor :parent, :size, :rank

  def initialize(n)
    @parent = n
    @size = 1
    @rank = 1
  end
end

class UnionFindTree
  def initialize(n)
    @nodes = (0..n).to_a.map { |i| Node.new(i) }
  end

  def root(x)
    return x if @nodes[x].parent == x

    @nodes[x].parent = root(@nodes[x].parent)
  end

  def size(x)
    @nodes[root(x)].size
  end

  def unite(a, b)
    a = root(a)
    b = root(b)
    return if a == b

    if @nodes[a].rank > @nodes[b].rank
      @nodes[b].parent = a
      @nodes[a].size += @nodes[b].size
    else
      @nodes[a].parent = b
      @nodes[b].size += @nodes[a].size
      @nodes[b].rank += 1 if @nodes[a].rank == @nodes[b].rank
    end
  end

  def same?(a, b)
    root(a) == root(b)
  end
end

n, m = gets.split.map(&:to_i)

tree = UnionFindTree.new(n)
ans = [ n * (n - 1) / 2 ]

x = []

m.times do |i|
  x << gets.split.map(&:to_i)
end

x.reverse.each do |a, b|
  if ans[-1] == 0
    ans << 0
  elsif !tree.same?(a, b)
    ans << ans[-1] - tree.size(a) * tree.size(b)
    tree.unite(a, b)
  else
      ans << ans[-1]
  end
end

puts ans[0...-1].reverse
