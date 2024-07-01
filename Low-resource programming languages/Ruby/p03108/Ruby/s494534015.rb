class UnionFind

  def initialize(n)
    @p = *0...n
    @r = [1] * n
  end

  def find(x)
    @p[x] == x ? x : @p[x] = find(@p[x])
  end

  def unite(x, y)
    x = find(x)
    y = find(y)
    return 0 if x == y
    s = @r[x] * @r[y]
    if @r[x] < @r[y]
      @p[x] = y
      @r[y] += @r[x]
    else
      @p[y] = x
      @r[x] += @r[y]
    end
    s
  end

  def same(x, y)
    find(x) == find(y)
  end

end

(n,m),*ab=$<.map{|s|s.split.map &:to_i}
uf=UnionFind.new(n+1)
s=0
p *ab.reverse.map{|a,b|
q=n*(n-1)/2-s
if not uf.same(a,b)
s+=uf.unite(a,b)
end
q
}.reverse