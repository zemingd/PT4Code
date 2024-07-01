# UnionFind に子どもの数を管理する機能を追加

# 上位ノードほど @rank が大きい数字となる
class Node
  attr_accessor :parent, :rank, :children

  # 親は自分自身、ランクは 0 として初期化する
  def initialize(n)
    @parent = n
    @rank = 0
    @children = 0
  end
end

class UnionFind
  # 0 から n までのノード（つまりn + 1個）を初期化する
  def initialize(n)
    @nodes = (0..n).map { |i| Node.new(i) }
  end

  # 再帰で最も上位の親を探して更新し、その値を返す
  def parent(x)
    return x if @nodes[x].parent == x
    return @nodes[x].parent = parent(@nodes[x].parent)
  end

  # a と b を仲間にする
  def unite(a, b)
    a_parent = parent(a)
    b_parent = parent(b)
    # a 及び b の親が同じ場合は何もしない
    if a_parent == b_parent
      @nodes[a_parent].children += 1
    # a親ランク < b親ランク の場合は、b親をa親の親とする
    # なお、ランクをいじる必要はなし
    elsif @nodes[a_parent].rank < @nodes[b_parent].rank
      @nodes[a_parent].parent = b_parent
      @nodes[b_parent].children += @nodes[a_parent].children + 1
    # その他の場合は、a親をb親の親とする
    else
      @nodes[b_parent].parent = a_parent
    # a親、及びb親のランクが同じ場合は、a親のランクを +1 する
      @nodes[a_parent].rank += 1 if @nodes[a_parent].rank == @nodes[b_parent].rank
      @nodes[a_parent].children += @nodes[b_parent].children + 1
    end
  end

  # a と b の親が同じかどうかを返す
  def same?(a, b)
    parent(a) == parent(b)
  end

  # 各ノードの親を全て出力する確認用
  def parents
    @nodes.map(&:parent)
  end

  def children(a)
    @nodes[a].children
  end
end

n, m = gets.split.map(&:to_i)
edges = []
m.times { edges << gets.split.map(&:to_i) }
tree = UnionFind.new(n)
convenients = [0]
# 後ろの橋から追加して、便利な組み合わせが何組あるかを確認していく
edges.reverse.each do |a, b|
  if tree.same?(a, b)
    convenients << convenients.last
  else
    convenients << convenients.last + (tree.children(tree.parent(a)) + 1) * (tree.children(tree.parent(b)) + 1)
    tree.unite(a, b)
  end
end
inconvenients = convenients.map { |i| (n * (n - 1)) / 2 - i }.reverse
inconvenients.delete_at(0)
inconvenients.each { |i| puts i }
