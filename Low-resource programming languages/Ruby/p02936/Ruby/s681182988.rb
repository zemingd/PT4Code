# require 'pp'
class Node
    attr_accessor :children, :cnt, :sub_root, :is_sub_root
    attr_reader :idx
    def initialize(idx)
        @idx = idx
        @children = []
        @cnt = 0
        @sub_root = nil
        @is_sub_root = false
    end

    # def add_x(x)
    #     @cnt += x
    #     # @children.each { |i| i.add_x(x) }
    # end

    def update_sub_root(node, depth = 0)
        return if depth > 1000
        @sub_root = node if node.idx != @idx
        if !@is_sub_root && @children.class == Array
            @children.each { |child| child.update_sub_root(node, depth + 1) if child.class == Node }
        end
    end

    def calc_cnt
        return @cnt if @sub_root.nil?
        @sub_root.calc_cnt + @cnt
    end
end

n, q = gets.split.map(&:to_i)

nodes = [Node.new(0)]
(n - 1).times do |i| 
    node = Node.new(i + 1)
    node.sub_root = nodes[0]
    nodes << node
end

(n - 1).times do |i|
    from, to = gets.split.map(&:to_i)
    parent_node = nodes[from - 1]
    child_node = nodes[to - 1]
    # update
    parent_node.children << child_node
    parent_node.children.uniq!
end

q.times do
    i, x = gets.split.map(&:to_i)
    root_node = nodes[i - 1]
    unless root_node.is_sub_root
        root_node.update_sub_root(root_node)
        root_node.is_sub_root = true
    end
    root_node.cnt += x
end

puts nodes.map(&:calc_cnt).join(' ')

# nodes.each_with_index do |n, idx|
#     puts "node #{idx}: (subroot: #{n.sub_root ? n.sub_root.idx : nil})"
#     n.children.each { |child| puts "   => #{child.idx}"  }
# end

