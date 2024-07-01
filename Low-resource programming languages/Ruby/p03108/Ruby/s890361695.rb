def r;gets.split.map &:to_i;end
def rr(n);n.times.map{r};end

class UnionFind
  def initialize(n, &block)
    @par = Array.new(n,&:itself)
    @rank = Array.new(n,1)
    instance_eval(&block) if block_given?
  end

  def root(a)
    par = @par[a]
    a == par ? a : @par[a] = root(par)
  end

  def unite(a,b)
    a = root(a); b = root(b)
    return if a == b

    if @rank[a] < @rank[b]
      @par[a] = b
      @rank[b] += @rank[a]
    else
      @par[b] = a
      @rank[a] += @rank[b]
    end
  end

  def same(a,b)
    root(a) == root(b)
  end

  def roots
    @par.map{|a|root(a)}
  end

  def rank(a)
    @rank[root(a)]
  end
end

N,M = r
BR = M.times.map{gets.split.map{|v|v.to_i - 1}}
BR.reverse!

conn = N*(N-1)/2
ANS = []
ANS << conn

UnionFind.new(N) do
  BR.each do |a,b|
    unless same(a,b)
      x = rank(a)
      y = rank(b)
      conn -= x * y
    end
    ANS << conn
    unite(a,b)
  end
end
ANS.pop
ANS.reverse!
ANS.each do |a|
  puts a
end