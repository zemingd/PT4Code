class UnionFind
  attr_reader :parent, :rank
  def initialize(size)
    @rank = Array.new(size, 0)
    @parent = Array.new(size, &:itself)
  end

  def unite(id_x, id_y)
    x_parent = get_parent(id_x)
    y_parent = get_parent(id_y)
    return if x_parent == y_parent

    if @rank[x_parent] > @rank[y_parent]
      @parent[y_parent] = x_parent
    else
      @parent[x_parent] = y_parent
      @rank[y_parent] += 1 if @rank[x_parent] == @rank[y_parent]
    end
  end

  def get_parent(id_x)
    @parent[id_x] == id_x ? id_x : (@parent[id_x] = get_parent(@parent[id_x]))
  end

  def same_parent?(id_x, id_y)
    get_parent(id_x) == get_parent(id_y)
  end
end
#n = gets.chomp.to_i
n,m = gets.chomp.split.map(&:to_i)

bridge = Array.new(m)
m.times do |i|
  bridge[i] = gets.chomp.split.map(&:to_i)
end

bridge.reverse!

def count(n)
  n*(n-1)/2
end

all_count = count(n)
ans = Array.new(m+1)
ans[0] = all_count

uf = UnionFind.new(n+1)
sizes = {}
sizes.default = 1
m.times do |i|
  a, b = bridge[i]
  ap = uf.get_parent(a)
  bp = uf.get_parent(b)
  if ap == bp
    ans[i+1] = ans[i]
    next
  end
  uf.unite(a,b)
  asize = sizes[ap]
  bsize = sizes[bp]
  new_size = asize + bsize
  sizes[uf.get_parent(a)] = new_size
  ans[i+1] = [ans[i] - count(new_size) + (count(asize) + count(bsize)), 0].max
end

ans.reverse!
ans.shift
ans.each do |e|
  puts e
end
