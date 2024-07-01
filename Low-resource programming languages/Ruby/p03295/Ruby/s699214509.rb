node_num, edge_num = gets.split.map {|i| i.to_i}

class Edge
    attr_reader :left, :right, :index
    def initialize(from, to, index)
        @index = index
        if from < to
            @left = from
            @right = to
        else
            @left = to
            @right = from
        end
    end

end


def finished?(fallen_pos, left_edges)
    # p left_edges
    # puts "----#{fallen_pos}"
    # p left_edges.find{|i| i >= fallen_pos}
    left_edges.find {|i| i >= fallen_pos }.nil?
end

edges = []
lefts = []
rights = []

edge_num.times do |i|
    from, to = gets.split.map {|i| i.to_i - 1}
    edge = Edge.new(from, to, i)
    edges << edge
    lefts << edge.left
    rights << edge.right
end


last_fallen_edge = 0
fallen_num = 0

while ! finished?(last_fallen_edge, lefts)
    rest_edges = edges.find_all {|e| e.left >= last_fallen_edge}
    # rest_edges.sort_by {|e| e.right }.each {|i| puts "#{i.left} -> #{i.right}"}
    last_fallen_edge = rest_edges.sort_by {|e| e.right }[0].right
    # puts last_fallen_edge
    fallen_num += 1
end

puts fallen_num