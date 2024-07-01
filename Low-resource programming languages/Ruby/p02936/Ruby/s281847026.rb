N, Q = gets.split.map(&:to_i)
 
nodes = []
 
class Node
  attr_accessor :parent, :count
 
  def initialize(id)
    @id = id
    @count = 0
    @count_all = nil
    @parent = nil
  end
 
  def calc
    return @count_all if @count_all
    return @count if parent.nil?
 
    @count_all = parent.calc + @count
  end
end
 
# N個分のノードを作る
N.times { |i| nodes << Node.new(i + 1) }
 
# ノード間の関係を作る
(N - 1).times do |i|
  a, b = gets.split.map(&:to_i)
  nodes[b - 1].parent = nodes[a - 1]
end
 
Q.times do
  p, x = gets.split.map(&:to_i)
  nodes[p - 1].count += x
end
 
puts nodes.map { |node| node.calc }