n, q = gets.split(' ').map(&:to_i)

class Node
  attr_accessor :children, :targets
  def initialize()
    @children = []
    @targets = []
  end
end

$nodes = [nil]
$scores = [nil]
n.times do |i|
  node = Node.new()
  $nodes << node
  $scores << 0
end

(n-1).times do
  a, b = gets.split(' ').map(&:to_i)
  $nodes[a].children << b
end

def visit(p)
  targets = [p]
  node = $nodes[p]
    if node.children.empty?
    node.targets = targets
    return targets
  end

  node.children.each do |c|
    targets += visit(c)
  end
  node.targets = targets
  $nodes[p] = node
  return targets
end

$nodes[1].targets = visit(1)

q.times do
  p, x = gets.split(' ').map(&:to_i)
  $nodes[p].targets.each do |i|
    $scores[i] += x
  end
end

puts $scores[1..-1].map(&:to_s).join(" ")
