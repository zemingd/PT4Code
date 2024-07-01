require 'pp'
class Node
    attr_accessor :parent, :children, :cnt
    attr_reader :idx
    def initialize(idx)
        @idx = idx
        @children = []
        @cnt = 0
    end

    def add_x(x)
        @cnt += x
        @children.each { |i| i.add_x(x) }
    end
end

n, q = gets.split.map(&:to_i)

nodes = []
n.times { |i| nodes << Node.new(i) }

(n - 1).times do |i|
    from, to = gets.split.map(&:to_i)
    parent_node = nodes[from - 1]
    child_node = nodes[to - 1]
    # update
    parent_node.children << child_node
end

q.times do
    i, x = gets.split.map(&:to_i)
    root_node = nodes[i - 1]
    root_node.add_x(x)
end

puts nodes.map(&:cnt).join(' ')

# nodes.each_with_index do |n, idx|
#     puts "node #{idx}:"
#     n.children.each { |child| puts "   => #{child.idx}"  }
# end

