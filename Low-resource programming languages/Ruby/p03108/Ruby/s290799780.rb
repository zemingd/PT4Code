class UnionFind
  attr :parent

  def initialize(nodes)
    @parent = {}
    nodes.each do |node|
      parent[node] = -1
    end
  end

  def root(x)
    if parent[x] < 0
      x
    else
      parent[x] = root(parent[x])
    end
  end

  def size(x)
    return -parent[root(x)]
  end

  def connect(x, y)
    rx = root(x)
    ry = root(y)
    if rx == ry
      return false
    else
      if size(rx) < size(ry)
        rx, ry = ry, rx
      end

      parent[rx] += parent[ry]
      parent[ry] = rx

      return true
    end
  end
end

n,m = gets.split.map(&:to_i)
as = []

m.times do
  as << gets.split.map(&:to_i)
end

ans = [(n*(n-1))/2]
uf = UnionFind.new((1..n).to_a)
while a = as.pop
  if uf.root(a[0]) != uf.root(a[1])
    ans << ans[-1] - (uf.size(a[0]) * uf.size(a[1]))
    uf.connect(a[0], a[1])
  else
    ans << ans[-1]
  end
end

ans.pop
ans.reverse.each do |a|
  puts a
end