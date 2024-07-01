class Unionfind
  attr_accessor(:par, :size)

  def initialize(n)
    @par = Array.new(n+1)
    (n+1).times do |i|
      @par[i] = i
    end
    @size = Array.new(n+1,1)
  end

  def root(x)
    while @par[x] != x
      x = @par[@par[x]]
      @par[x] = @par[@par[x]]
    end
    x
  end

  def unite(x,y)
    rx = root(x)
    ry = root(y)
    if rx != ry
      @size[ry] += size(rx)
      @par[rx] = ry
    end
  end

  def same(x,y)
    return root(x)==root(y)
  end

  def size(x)
    if @par[x] == x
      @size[x]
    else
      size(root(par[x]))
    end
  end

end

n,m = gets.chomp.split(" ").map(&:to_i)
a,b = m.times.map{gets.split.map(&:to_i)}.transpose
cnt = n * (n-1) / 2
ans = [cnt]
tree = Unionfind.new(n)
(m-1).downto(1) do |i|
  size_a = tree.size(a[i])
  size_b = tree.size(b[i])
  if !tree.same(a[i],b[i])
    tree.unite(a[i],b[i])
    cnt -= size_a * size_b
  end
  ans << cnt
end
ans.reverse!
puts ans