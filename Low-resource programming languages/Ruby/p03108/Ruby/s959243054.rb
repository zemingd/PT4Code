N, M = gets.split.map(&:to_i)
AB = M.times.map{gets.split.map(&:to_i)}

class UFTree
  def initialize(n)
    @p = Array.new(n + 1, -1)
  end
  def find(x)
    @p[x] < 0 ? x : @p[x] = find(@p[x])
  end
  def unite(a, b)
    x = find(a)
    y = find(b)
    if x != y
      x, y = y, x if @p[y] < @p[x]
      @p[x] += @p[y]
      @p[y] = x
    end
  end
  def member(x)
    -@p[find(x)]
  end
end

nC2 = Hash.new {|h, n| h[n] = n * (n - 1) / 2}
tree = UFTree.new(N)
tot = nC2[N]
ans = [tot]
AB[1...M].reverse.each do |a, b|
  if tree.find(a) != tree.find(b)
    n1 = tree.member(a)
    n2 = tree.member(b)
    tot -= nC2[n1 + n2] - nC2[n1] - nC2[n2]
    tree.unite(a, b)
  end
  ans << tot
end 

puts ans.reverse