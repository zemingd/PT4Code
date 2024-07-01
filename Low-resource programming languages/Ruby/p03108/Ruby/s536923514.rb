n, m = gets.split.map(&:to_i)

x = []

m.times do |i|
  x << gets.split.map(&:to_i)
end

class Node
  attr_accessor :parent, :size

  def initialize(n)
    @parent = n
    @size = 1
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

  def size(x)
    return @nodes[x].size if @nodes[x].parent == x

    @nodes[x].parent = find(@nodes[x].parent)

    return size(@nodes[x].parent)
  end

  def unite(a, b)
    a = find(a)
    b = find(b)
    return if a == b

    @nodes[a].parent = b
    @nodes[b].size += @nodes[a].size
  end

  def same?(a, b)
    find(a) == find(b)
  end
end

tree = UnionFindTree.new(n)

ans = [] << n * (n - 1) / 2
x.reverse.each do |a, b|
  if !tree.same?(a, b)
    ans << ans[-1] - tree.size(a) * tree.size(b)
    tree.unite(a, b)
  else
      ans << ans[-1]
  end
end

puts ans.reverse[1..-1]