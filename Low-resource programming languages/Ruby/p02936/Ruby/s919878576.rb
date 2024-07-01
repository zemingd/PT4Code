n, q = gets.split(' ').map(&:to_i)

class Node
  attr_accessor :children
  def initialize()
    @children = []
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

q.times do
  p, x = gets.split(' ').map(&:to_i)
  $scores[p] += x
end

def visit(p, accum)
  $scores[p] += accum
  accum = $scores[p]
  $nodes[p].children.each do |c|
    visit(c, accum)
  end
end

visit(1, 0)

puts $scores[1..-1].map(&:to_s).join(" ")
