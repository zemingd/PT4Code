class Graph
  attr_accessor :g

  #
  def initialize(n)
    @g = {}
    1.upto(n){|i| @g[i] = {} }
  end

  #
  def set_distance(a, b, w)
    @g[a][b] = w
    @g[b][a] = w
  end

  # DFS: 再帰なし版
  def get_distance(a, b)
    #puts "a=#{a} -> b=#{b}"
    stack = [a]
    visited = []
    distance = 0

    while stack.size > 0
      #puts "visited=#{visited}"
      #puts "  stack=#{stack}"
      node = stack.pop
      distance += @g[visited[-1]][node] if visited.size > 0 and @g[visited[-1]][node]
      #
      if node == b
        #puts "distance=#{distance}"
        if distance % 2 == 0
          return 0
        else
          return 1
        end
      end
      #
      unless visited.include? node
        visited << node
        @g[node].each{|key, _| stack.push key unless visited.include? key}
      end
    end
  end

end

n = gets.rstrip.to_i
graph = Graph.new(n)
(n-1).times do
  u, v, w = gets.rstrip.split.map(&:to_i)
  graph.set_distance(u, v, w) 
end

puts 0
2.upto(n) do | i |
  puts graph.get_distance(1, i)
end