class UnionFind
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

N, M = gets.split.map(&:to_i)

edges = M.times.map { gets.split.map(&:to_i) }

uf = UnionFind.new(N)
cnt = (1..(N - 1)).inject(:+)
ans = [cnt]

edges.reverse_each do |a, b|
  if uf.find(a) != uf.find(b)
    cnt -= uf.size(a) * uf.size(b)
  end

  uf.unite(a, b)

  ans << cnt
end

puts ans[0..-2].reverse
