(N, M) = gets.split.map(&:to_i)

bridge = []

M.times do
  bridge << gets.split.map(&:to_i)
end

class UnionFind
  attr_reader :count

  def initialize(n)
    @root = Array.new(n + 1)
    @root[0] = nil
    @root_count = Hash.new(1)
    @count = n * (n - 1) / 2
  end

  def union(a, b)
    unite(find(a), find(b))
  end

  def find(a)
    @root[a] == nil ? a : @root[a] = find(@root[a])
  end

  def unite(a, b)
    return 0 if a == b
    a, b = b, a if b < a
    @count -= @root_count[a] * @root_count[b]
    @root[b] = a
    @root_count[a] += @root_count[b]
    @root_count.delete(b)
  end
end

uf = UnionFind.new(N)

ans = bridge.reverse_each.map do |a, b|
  c = uf.count
  uf.union(a, b)
  c
end

puts ans.reverse