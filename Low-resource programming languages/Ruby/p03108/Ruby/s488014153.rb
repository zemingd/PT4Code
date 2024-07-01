class UnionFind

  def initialize(n)
    @parents = Array.new(n, -1) # if negative value means size
  end

  def unite(a, b)
    a = root(a)
    b = root(b)

    return false if a == b

    a, b = b, a if -@parents[a] < -@parents[b]
    @parents[a] += @parents[b] # if negative value means size
    @parents[b] = a
    true
  end

  def root(a)
    @parents[a] < 0 ? a : (@parents[a] = root(@parents[a]))
  end

  def same?(a, b)
    root(a) == root(b)
  end

  def size(a)
    -@parents[root(a)]
  end
end

n, m = gets.to_s.split.map{|t|t.to_i}
bridges = Array.new(m){ gets.to_s.split.map{ |t| t.to_i - 1 } }

bridges.reverse!
uft = UnionFind.new(n)

ans = [n * (n-1) / 2]
bridges.each do |a, b|
  s = uft.size(a)
  t = uft.size(b)
  ans.unshift (ans[0] - (uft.unite(a, b) ? s * t : 0))
end

puts ans.drop(1)