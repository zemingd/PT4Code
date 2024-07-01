def nc2(n)
  n*(n-1)/2
end
class UnionFind
  def initialize(n)
    @node=Array.new(n)
  end
  def make_set(x)#: 未設定の場合、要素がただ１つである新しい集合を作る
    @node[x]=x unless @node[x]
  end
  def find_set(x)#: 要素が属する集合の"代表"の要素を求める
    (@node[x]=find_set(@node[x])) unless @node[x]==x
    @node[x]
  end
  def union(x,y)#: 指定された２つの要素を合併する
    link(find_set(x),find_set(y))
  end
  def link(x,y)
    return if x==y
    a,b=[x,y].sort
    @node[b]=a
  end
  def same?(a,b)
    find_set(a)==find_set(b)
  end
  def nd
    @node.compact.map{|n|find_set(n)}
  end
  def con
    hash=Hash.new{|h,k|h[k]=0}
    nd.each do |n|
      hash[n]+=1
    end
    hash.values.map{|v|nc2(v)}.inject(:+)
  end
end
io = STDIN

n,m=io.gets.split.map(&:to_i)
ar=m.times.map{io.gets.split.map(&:to_i)}

uf=UnionFind.new(m)
ans=[nc2(n)]
ar.reverse.each do |a,b|
  [a,b].each{|x|uf.make_set(x)}
  uf.union(a,b)
  ans << nc2(n)-uf.con
end
puts ans.reverse[1..-1]
