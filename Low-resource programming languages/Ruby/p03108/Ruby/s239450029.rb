class UnionFind
  def initialize(n)
    @parent = Array.new(n, -1)
  end

  def root(x) # xの根の番号を返す
    return x if @parent[x] < 0
    @parent[x] = root(@parent[x])
    return @parent[x]
  end

  def size(x) # xの属するグループのサイズを調べる
    return -@parent[root(x)]
  end

  def merge(x, y)
    x, y = root(x), root(y)
    return false if x == y
    # 大きい方(x)に小さい方(y)をくっつけたい
    x, y = y, x if size(x) < size(y)
    @parent[x] += @parent[y]
    @parent[y] = x
    return true
  end

  def same?(x, y)
    root(x) == root(y)
  end
end

N,M=gets.split.map(&:to_i)
a,b = Array.new(M), Array.new(M)
bridge = []
M.times do
  bridge << gets.split.map(&:to_i)
end

ans = Array.new(M)
ans[M-1]=N*(N-1)/2
uf = UnionFind.new(N)

i = 1
bridge.reverse_each do |a,b|
  id = M-1-i
  break if id < 0
  if uf.same?(a-1, b-1)
    ans[id] = ans[id+1]
  else
    ans[id] = ans[id+1] - uf.size(a-1)*uf.size(b-1)
  end
  uf.merge(a-1,b-1)
  i += 1
end
puts ans