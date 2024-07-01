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

  def size(a)
    parents.count(find(a))
  end

  def parents
    @nodes.map(&:parent)
  end
end

n, m = gets.chomp!.split(" ").map(&:to_i)
bridges = []
m.times do
  a, b = gets.chomp!.split(" ").map(&:to_i)
  bridges << [a - 1, b - 1]
end

all = n * (n - 1) / 2
ans = [all]

uft = UnionFindTree.new(n - 1)
bridges.reverse.each do |bridge|
  uft.unite(bridge[0], bridge[1])
  0.upto(n-1).map{ |i| uft.find(i) }
  ans << 0.upto(n-1).map{ |i| n - uft.size(i) }.reduce(:+) / 2
end

puts ans[0..-2].reverse
