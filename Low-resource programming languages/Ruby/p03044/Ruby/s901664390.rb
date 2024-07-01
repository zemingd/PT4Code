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

tree = UnionFind.new(n*2+2)

(n-1).times do |i|
  u,v,w = gets.split.map(&:to_i)
  if w % 2 == 0
    tree.unite(u*2,v*2)
    tree.unite(u*2+1,v*2+1)
  elsif w % 2 == 1
    tree.unite(u*2,v*2+1)
    tree.unite(u*2+1,v*2)
  end
end

n.times do |i|
  a,b = tree.find(2),tree.find(3)
  if tree.find(i*2+2) == a
    p 0
  else
    p 1
  end
  #p [i+1,t,a,b]
end
