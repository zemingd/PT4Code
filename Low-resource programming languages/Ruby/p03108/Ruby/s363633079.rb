class UnionFind
  def initialize
    @parent = Hash.new
    @rank = Hash.new
    @size = Hash.new
  end
  def make(x)
    @parent[x] = x
    @rank[x] = 0
    @size[x] = 1
  end
  def union(a, b)
    x, y = find(a), find(b)
    return if x == y
    x, y = y, x if @rank[x] < @rank[y]
    @size[x] += @size[y]
    @parent[y] = x
    @rank[x] += 1 if @rank[x] == @rank[y]
  end
  def find(x)
    @parent[x] == x ? x : @parent[x] = find(@parent[x])
  end
  def same(a, b)
    x, y = find(a), find(b)
    x == y
  end
  def size(x)
    @size[find(x)]
  end
end

N,M=gets.split.map(&:to_i)
uf=UnionFind.new
1.upto(N) do |v| uf.make(v) end
sum=N*(N-1)/2
res=[sum]
M.times.map{gets.split.map(&:to_i)}.reverse_each do |a,b|
  next res<<sum if uf.same(a,b)
  sum-=uf.size(a)*uf.size(b)
  res<<sum
  uf.union(a,b)
end
puts res[0...-1].reverse
