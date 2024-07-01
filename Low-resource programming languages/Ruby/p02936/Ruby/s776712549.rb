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

    def update_sub_root(node)
        @sub_root = node
        unless @is_sub_root
            @children.each { |child| child.update_sub_root(node) }
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
    node = Node.new(i)
    node.sub_root = nodes[0]
    nodes << node
end

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
    unless root_node.is_sub_root
        root_node.is_sub_root = true
        root_node.children.each{ |child| child.update_sub_root(root_node) }
    end
    root_node.cnt += x
end

puts nodes.map(&:calc_cnt).join(' ')

# nodes.each_with_index do |n, idx|
#     puts "node #{idx}:"
#     n.children.each { |child| puts "   => #{child.idx}"  }
# end

