class UnionFindTree
  def initialize(n)
    @size = Array.new(n + 1, 1)
    @rank = Array.new(n + 1, 0)
    @parent = []

    (0..n).each do |i|
      @parent[i] = i
    end
  end

  def find(x)
    if @parent[x] == x
      x
    else
      @parent[x] = find(@parent[x])
    end
  end

  def unite(x, y)
    x = find(x)
    y = find(y)
    return if x == y

    if @rank[x] < @rank[y]
      @parent[x] = y
      @size[y] += @size[x]
    else
      @parent[y] = x
      @size[x] += @size[y]

      @rank[x] += 1 if @rank[x] == @rank[y]
    end
  end

  def same?(x, y)
    find(x) == find(y)
  end

  def size(x)
    @size[find(x)]
  end
end

n, m = gets.chomp!.split(" ").map(&:to_i)
bridges = m.times.map do
  gets.split.map(&:to_i).map{ |i| i - 1 }
end

all = n * (n - 1) / 2
ans = [all]

uft = UnionFindTree.new(n - 1)
bridges.reverse.each do |bridge|
  unless uft.same?(bridge[0], bridge[1])
    ans << ans[-1] - uft.size(bridge[0]) * uft.size(bridge[1])
  else
    ans << ans[-1]
  end

  uft.unite(bridge[0], bridge[1])
end

puts ans[0..-2].reverse
