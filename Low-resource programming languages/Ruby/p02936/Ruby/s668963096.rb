class Node
  attr_accessor :counter, :children

  def initialize
    @counter = 0
    @children = []
  end

  def add(x)
    @children.each { |c| c.add(x) }
    @counter += x
  end
end

n, q = gets.split.map(&:to_i)
edges = (n - 1).times.map { gets.split.map(&:to_i) }
points = q.times.map { gets.split.map(&:to_i) }

nodes = n.times.map { Node.new }
edges.each { |(a, b)| nodes[a - 1].children << nodes[b - 1] }
points.each { |(p, x)| nodes[p - 1].add(x) }
puts nodes.map { |node| node.counter }.join(' ')
