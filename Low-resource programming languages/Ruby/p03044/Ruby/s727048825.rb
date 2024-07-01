class Node
  attr_accessor :id, :adjacency, :color
  @@id = 1
  def initialize
    @id = @@id
    @@id += 1
    @adjacency = []
  end

end

class Edge
  attr_accessor :to, :weight
  def initialize(to, weight)
    @to = to
    @weight = weight
  end
end

N = gets.chomp.to_i
nodes = Array.new(N) { Node.new }


(N - 1).times do |i|
  u, v, w = gets.chomp.split.map(&:to_i)
  nodes[u - 1].adjacency.push(Edge.new(v, w))
  nodes[v - 1].adjacency.push(Edge.new(u, w))
end

nodes.first.color = 0
queue = [nodes.first]

while !queue.empty?
  check = queue.shift
  if check.adjacency.color
    next
  end

  check.adjacency.each do |edge|
    if edge.weight % 2 === 0
      n = nodes.select{|node| node.id === edge.to }.first
      n.color = check.color
    end
  end
  queue.push(**check.adjacency)
end

puts 