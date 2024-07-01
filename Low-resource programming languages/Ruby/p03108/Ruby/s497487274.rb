class Node
  attr_accessor :parent, :size
  def initialize(n)
    @parent = n
    @size = 1
  end
end

class UnionFindTree
  def initialize(n)
    @nodes = (0..n).map { |i| Node.new(i) }
  end

  def find(x)
    return x if @nodes[x].parent == x
    @nodes[x].parent = find(@nodes[x].parent)
  end

  def unite(a, b)
    pa = find(a)
    pb = find(b)
    return if pa == pb

    if @nodes[pa].size < @nodes[pb].size
      @nodes[pa].parent = pb
    else
      @nodes[pb].parent = pa
    end

    tmp = @nodes[pa].size + @nodes[pb].size
    @nodes[pa].size = tmp
    @nodes[pb].size = tmp

  end

  def same?(a, b)
    find(a) == find(b)
  end

  def size(x)
    return @nodes[find(x)].size
  end

end


N, M = gets.split.map(&:to_i)
A =[]
B=[]

for i in 0..M-1 do
  A[i], B[i] = gets.split.map(&:to_i)
end

ans = Array.new(M)
cur = N*(N-1)/2
uft = UnionFindTree.new(N)


for i in 0..M-1 do

  ans[i] = cur

  a = A[M-1-i]
  b = B[M-1-i]

  next if uft.same?(a,b)

  sa = uft.size(a)
  sb = uft.size(b)

  cur -= sa*sb

  uft.unite(a,b)

end


for i in 0..M-1 do
  puts ans[M-1-i]
end
