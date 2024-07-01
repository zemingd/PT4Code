ISLANDS, BRIDGES = gets.split(" ").map(&:to_i)
FIRST = ISLANDS*(ISLANDS-1) / 2

inputs = (0...BRIDGES).map do
  gets.split(" ").map(&:to_i)
end
inputs.reverse!

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
    @count = Array.new(n+1, 1)
  end

  def find(x)
    return x if @nodes[x].parent == x

    return @nodes[x].parent = find(@nodes[x].parent)
  end

  def count(x)
    @count[find(x)]
  end

  def unite(a, b)
    # p [a,b]
    # p @count

    a = find(a)
    b = find(b)
    return if a == b

    if @nodes[a].rank < @nodes[b].rank
      @nodes[a].parent = b
      @count[b] = @count[a] + @count[b]
    else
      @nodes[b].parent = a
      @nodes[a].rank += 1 if @nodes[a].rank == @nodes[b].rank
      @count[a] = @count[a] + @count[b]
    end
  end

  def same?(a, b)
    find(a) == find(b)
  end

  # 確認用。アルゴリズムとは関係無い
  def parents
    @nodes.map(&:parent)
  end
end

@utree = UnionFindTree.new(ISLANDS)
@score = FIRST

res = inputs.map do |v|
  @score = @score - @utree.count(v[0])*@utree.count(v[1]) if @score != 0
  @utree.unite(v[0], v[1])
  @score
end
res.reverse!
res.slice!(0, 1)

puts res if res.size != 0
puts FIRST
