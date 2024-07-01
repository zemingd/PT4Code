n, m = gets.chomp.split(" ").map(&:to_i)
a = []
b = []

m.times do 
  ai, bi = gets.chomp.split(" ").map(&:to_i)
  a << ai
  b << bi
end

class UnionFind
  def initialize(n)
    @n = n
    @par = Array.new(@n+1){|i| i}
    @rank = Array.new(@n+1, 0)   
    @c = Array.new(@n+1, 1) 
  end

  def find(x)
    if @par[x] == x
      return x
    else 
      @par[x] = find(@par[x])
      return @par[x]
    end
  end

  def unite(x, y)
    x = find(x)
    cx = @c[x]
    y = find(y)
    cy = @c[y]
    if @rank[x] < @rank[y]
      @par[x] = y
      @c[y] = cx + cy
    else
      @par[y] = x
      @c[x] = cx + cy
      if @rank[x] == @rank[y]
        @rank[x] += 1
      end
    end
    return cx * cy
  end

  def same(x, y)
    return find(x) == find(y)
  end
end


uf = UnionFind.new(n)

ans = Array.new(m+1)
ans[m] = n * (n - 1) / 2

(m-1).downto(0) do |i|
  ai = a[i]
  bi = b[i]
  if uf.same(ai, bi)
    ans[i] = ans[i + 1]
  else
    u = uf.unite(ai, bi)
    ans[i] = ans[i + 1] - u
  end
end

puts ans[1..m]
