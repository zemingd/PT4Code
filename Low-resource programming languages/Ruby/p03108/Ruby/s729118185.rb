class FUnionFind
  attr_reader :nodes, :parents, :ranks

  def initialize(n)
    @parents = (0...n).to_a
    @nodes = @parents.map{ |x| [x] }
  end

  def find(i)
    @parents[i]
  end

  def union(i,j)
    i = @parents[i]; j = @parents[j]
    return if i == j
    j,i = i,j if @nodes[i].size < @nodes[j].size
    #p [i,j,@nodes[i],@nodes[j]]
    #p [i,j,@nodes[i].size,@nodes[j].size]
    @nodes[j].each{ |k| @parents[k] = i }
    @nodes[i].concat(@nodes[j])
    @nodes[j].clear
  end

  def setsize(i)
    @nodes[find(i)].size
  end
end

N,M = gets.split.map(&:to_i)
uf = FUnionFind.new(N)
v = N*(N-1)/2
puts (0...M).map{
  a,b = gets.split.map(&:to_i)
}.reverse.map{ |a,b|
  next v.tap{
    if uf.find(a-1) != uf.find(b-1)
      v -= uf.setsize(a-1) * uf.setsize(b-1)
      uf.union(a-1, b-1)
    end
  }
}.reverse