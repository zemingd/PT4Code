# 1〜Nまでの番号がついたN個の頂点を持つ根付き木 (2 <= N <= 2 * 10**5)
# i番目の辺 (1 <= i <= N - 1) は頂点aiと頂点biを結ぶ
# 各頂点のカウンターは全て0から
# 以下の操作をQ回行う (1 <= Q <= 2 * 10**5)
# 　操作j (1 <= j <= Q)：頂点pjを根をする部分木に含まれるすべての頂点のカウンターにxiを足す
# すべての操作のあと各頂点のカウンターの値を求める

N, Q = gets.split.map(&:to_i)

nodes = []

class Node
  attr_reader :children, :count

  def initialize(id)
    @id = id
    @count = 0
    @children = []
  end

  def add_child(node)
    @children << node
  end

  def add_count(val)
    @count += val

    @children.each do |node|
      node.add_count(val)
    end
  end
end

# N個分のノードを作る
N.times { |i| nodes << Node.new(i + 1) }

# ノード間の関係を作る
# 今回は子ノードに対してカウンターの値を加算する操作だけなので
# あるノードの子要素だけ知っていれば良いとする
(N - 1).times do |i|
  a, b = gets.split.map(&:to_i)
  nodes[a - 1].add_child(nodes[b - 1])
end

Q.times do
  p, x = gets.split.map(&:to_i)
  nodes[p - 1].add_count(x)
end

puts nodes.map(&:count)