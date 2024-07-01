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
    @nodes.map.with_index{|_p, i| find(i)}
  end
end

n, m = gets.split.map(&:to_i)

x = []

m.times do |i|
  x << gets.split.map(&:to_i)
end

tree = UnionFindTree.new(n)

ans = [] << n * (n - 1) / 2
x.reverse.each do |a, b|
  tree.unite(a, b)
  y = n * (n - 1) / 2
  (1..n).each do |i|
    c = tree.parents.count(i)
    y -= c * (c - 1) / 2 if c > 1
  end
  ans << y
end

puts ans.reverse[1..-1]