N, M = gets.split.map(&:to_i)

@par = Array.new(N)
@rank = Array.new(N)

def init(n)
  (0..n-1).each do |i|
    # はじめは全部の頂点が根
    @par[i] = i
    @rank[i] = 0
  end
end

def root(x)
  if @par[x] == x
    # 根
    return x;
  else
    # 経路圧縮
    return @par[x] = root(@par[x])
  end
end

def same?(x, y)
  return root(x) == root(y)
end

def unite(a, b)
  x = root(a)
  y = root(b)

  if (x == y)
    return
  end
  
  if (@rank[x] < @rank[y])
    @par[x] = y
  else
    @par[y] = x
    if (@rank[x] == @rank[y])
      @rank[x] += 1
    end
  end
end

init(N)

as = Array.new(M)
bs = Array.new(M)
M.times do |i|
  as[i], bs[i] = gets.split.map { |n| n.to_i - 1 }
end

ans = []
(M-1).downto(0) do |i|
  t = 0
  @par.each do |p1|
    @par.each do |p2|
      next if p1 <= p2
      t += 1 if root(p1) != root(p2)
    end
  end
  ans.unshift(t)
  a, b = as[i], bs[i]
  unite(a, b)
end
puts ans