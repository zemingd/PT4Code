N, M = gets.split.map(&:to_i)
A = Array.new(M)
B = Array.new(M)
M.times do |i|
  A[i], B[i] = gets.split.map(&:to_i)
end

class UnionFindTree
  def initialize(n)
    @parents = (0...n).to_a
    @sizes = Array.new(n, 1)
  end

  def find(x)
    @parents[x] == x ? x : @parents[x] = find(@parents[x])
  end

  def unite(a, b)
    a = find(a)
    b = find(b)
    return if a == b

    a, b = b, a if @sizes[a] < @sizes[b]
    @parents[b] = a
    @sizes[a] += @sizes[b]
  end

  def same?(a, b); find(a) == find(b) end
  def size(a); @sizes[find(a)] end
  def inspect; [@parents, @sizes] end
end

answers = Array.new(M, 0)
tree = UnionFindTree.new(N)
answers[M-1] = (N * (N - 1)) / 2
(M-2).downto(0) do |i|
  ag = tree.find(A[i+1] - 1)
  bg = tree.find(B[i+1] - 1)

  answers[i] = answers[i + 1]
  answers[i] -= tree.size(A[i+1] - 1) * tree.size(B[i+1] - 1) if ag != bg

  tree.unite(A[i+1] - 1, B[i+1] - 1)
end

answers.each do |ans|
  puts ans
end