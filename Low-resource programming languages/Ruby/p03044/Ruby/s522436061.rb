class Node
  attr_reader :id, :children, :distance

  def initialize(id, distance)
    @id = id
    @children = []
    @distance = distance
  end
end

def build(node, h, distance, parent = nil)
  return if h[node.id].nil?
  h[node.id].each do |(i, d)|
    next if i == parent
    dd = distance + d
    n = Node.new(i, dd)
    build(n, h, dd, node.id)
    node.children << n
  end
end

def build_arr(node, arr)
  arr[node.id-1] = node.distance
  node.children.each { |e| build_arr(e, arr) }
  arr
end

def print_node(node, indent = 0)
  puts ' ' * indent + node.id.to_s
  node.children.each do |c|
    print_node(c, indent + 2)
  end
end

n = gets.chomp.to_i

h = {}

(n-1).times do
  u, v, w = gets.chomp.split(' ').map(&:to_i)
  w = w % 2
  h[u] ||= []
  h[u] << [v, w]
  h[v] ||= []
  h[v] << [u, w]
end

root = Node.new(1, 0)
build(root, h, 0)
build_arr(root, []).each do |c|
  puts c
end
