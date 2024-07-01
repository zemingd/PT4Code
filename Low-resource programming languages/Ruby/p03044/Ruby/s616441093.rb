
class UnionFind
  attr_accessor :parent, :rank
  
  def initialize(n)
    @parent = []
    @rank = []
    n.times do |i|
      @parent[i] = i
      @rank[i] = 0
    end
  end

  def find(x)
    if @parent[x] == x
      return x
    else
      return @parent[x] = find(@parent[x])
    end
  end

  def unite(x,y)
    x,y = find(x),find(y)
    return if x==y

    x,y = y,x if @rank[x] < @rank[y]
    @rank[x] += 1 if @rank[x] == @rank[y]
    @parent[y] = x
  end
end
n = gets.to_i

tree = UnionFind.new(n+2)

(n-1).times do |i|
  u,v,w = gets.split.map(&:to_i)
  if w % 2 == 0
    tree.unite(u,v)
  elsif w % 2 == 1
    x,y = tree.find(u),tree.find(v)
    a,b = tree.find(0),tree.find(n+1)
    if x == a
      tree.unite(v,n+1)
    elsif x == b
      tree.unite(v,0)
    elsif y == a
      tree.unite(u,n+1)
    elsif y == b
      tree.unite(u,0)
    else
      tree.unite(u,0)
      tree.unite(v,n+1)
    end
  end
end

n.times do |i|
  t,a,b = tree.find(i+1),tree.find(0),tree.find(n+1)
  if t == a
    p 0
  elsif t == b
    p 1
  else
    p 0
  end
  #p [i+1,t,a,b]
end