class UnionFind
  def initialize(n)
    @parent = Array.new(n)
    @rank = Array.new(n)
    @size = Array.new(0)
    (0...n).each do |i|
      @parent[i] = i
      @rank[i] = 0
      @size[i] = 1
    end
  end

  def find(x)
    if @parent[x] == x
      x
    else
      @parent[x] = find(@parent[x])
    end
  end

  def unite(x, y)
    x_root = find(x)
    y_root = find(y)
    return if x_root == y_root

    if @rank[x_root] < @rank[y_root]
      @parent[x_root] = y_root
      @size[y_root] += @size[x_root]
    else
      @parent[y_root] = x_root
      @size[x_root] += @size[y_root]
      if @rank[x_root] == @rank[y_root]
        @rank[x_root] += 1
      end
    end
    nil
  end

  def size(x)
    x_root = find(x)
    @size[x_root]
  end

  def same?(x, y)
    find(x) == find(y)
  end
end

N, M = gets.split.map(&:to_i)
edge_list = M.times.map { gets.split.map(&:to_i) }
answers = []
last_ans = N * (N - 1) / 2
answers.unshift(last_ans)
uf = UnionFind.new(N + 1)
(M - 1).downto(1).each do |i|
  a, b = edge_list[i]
  unless uf.same?(a, b)
    last_ans -= uf.size(a) * uf.size(b)
  end
  answers.unshift(last_ans)
  uf.unite(a, b)
end

puts answers.join("\n")
