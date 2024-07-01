class UnionFind
  def initialize(n)
    @n = n
    @parent = Array.new(n){|i|i}
    @rank = Array.new(n, 0)
  end

  def find(x)
    if @parent[x] == x
      return x
    else
      return @parent[x] = find(@parent[x])
    end 
  end

  def unite(x, y)
    x = find(x)
    y = find(y)
    return if x == y
    if @rank[x] < @rank[y]
      @parent[x] = y
    else
      @parent[y] = x
      @rank[x] += 1 if @rank[x] == @rank[y]
    end
  end

  def same?(x, y)
    find(x) == find(y)
  end
end

def combi(n)
  n*(n-1)/2
end

n,m=gets.split.map(&:to_i)
bridges=m.times.map{gets.split.map{|v|v.to_i-1}}
connected_num=Array.new(n,1)
uf=UnionFind.new(n)
ans=[combi(n)]
bridges.reverse_each{|a,b|
  if uf.same?(a,b)
    ans << ans.last
  else
    na=connected_num[uf.find(a)]
    nb=connected_num[uf.find(b)]
    uf.unite(a,b)
    root=uf.find(a)
    connected_num[root]=na+nb
    ans << ans.last+combi(na)+combi(nb)-combi(na+nb)
  end
}
ans.pop
puts ans.reverse