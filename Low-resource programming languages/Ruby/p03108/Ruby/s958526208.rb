class UnionFind
  def initialize(n)
    @n = n
    @par = Array.new(@n)
    @chl = Hash.new{|h, k| h[k] = []}
    @par.map!.with_index{|x, i| @chl[i]; i}
  end
  def union(a, b)
    pa, pb = [@par[a], @par[b]]
    if pa < pb then
      absorb(a, b)
    elsif pa > pb then
      absorb(b, a)
    end
  end
  def each_group(&b)
    @chl.each{|k, v| b.call(k, v)}
  end
  
  private
  
  def absorb(pa, ch)
    par = @par[pa]
    chl = @par[ch]
    @chl[chl].each{|c|
      @chl[par] << c
      @par[c] = par
    }
    @chl.delete(chl)
    @chl[par] << chl
    @par[chl] = par
  end
end

N, M = gets.chomp.split(" ").map(&:to_i)
E = Array.new(M).map{
  gets.chomp.split(" ").map(&:to_i)
}

uf = UnionFind.new(N+1)
ans = E.reverse.map{|a, b|
  uf.union(a, b)
  wk = 0
  uf.each_group{|k, v| wk += (v.size * (v.size+1))/2}
  wk
}

ans.unshift(0)
ans.pop
wk = (N * (N-1))/2
puts ans.reverse.map{|a| wk-a}*?\n
