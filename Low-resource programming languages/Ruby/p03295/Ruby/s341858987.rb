require 'benchmark'
node_num,edge_num = gets.split.map {|i| i.to_i}
 
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
    # left_edges.find {|i| i >= fallen_pos }.nil?
    left_edges.sort[-1] < fallen_pos
end
 
edges = []
lefts = []
# rights = []
 
edge_num.times do |i|
    from, to = gets.split.map {|i| i.to_i - 1}
    edge = Edge.new(from, to, i)
    edges << edge
    lefts << edge.left
    # rights << edge.right
end
 
edges.sort_by! {|e| e.left}
rest_edges = edges
last_fallen_edge = 0
fallen_num = 0
 
while ! finished?(last_fallen_edge, lefts)
    fallen_num += 1
    # puts [rest_edges.size, rest_edges.find_index {|e| e.left >= last_fallen_edge}].join("-")
    # rest_edges.each {|i| puts "#{i.left} -> #{i.right}"}    
    # puts "fallen #{last_fallen_edge} --- #{rest_edges.find_index {|e| e.left >= last_fallen_edge} }"
    # rest_edges = rest_edges[rest_edges.find_index {|e| e.left >= last_fallen_edge} ... -1]
    bench= Benchmark.realmark { rest_edges = rest_edges.find_all {|e| e.left >= last_fallen_edge} }
  warn bench if bench > 0.5
    # puts rest_edges.size
    last_fallen_edge = rest_edges.sort_by {|e| e.right }[0].right
    # puts last_fallen_edge
end
 
puts fallen_num