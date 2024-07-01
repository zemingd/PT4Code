
class Edge
  attr_accessor :s, :e, :c, :z
#  attr_writer :c
  def initialize(s,e,z)
    @s = s
    @e = e
    @c = 0
    @z = z
  end
end

class Graph
  def initialize(graph)    #hはHash
#    @vs = vs    #Array:頂点（要素は Vertex）
    @es = {}    #Hash:枝（Vertex=>Array）:Arrayの要素はEdge
    graph.each do |hash|
      unless @es.has_key?(hash[:s])
        @es[hash[:s]] = []
      end
      @es[hash[:s]] << Edge.new(hash[:s],hash[:e],hash[:z])
    end
  end

  def get_edges(v)
    @es[v]    #頂点vからのすべての枝（Array）を返す
  end

  #goalを見つければtrue, 見つけられなければfalseを返す
  def find(start, goal)
    dfs(start, goal, [], 0, 0)
  end

  def dfs(v, goal, visited, score, point)
#    puts %(v:#{v},g:#{goal},v:#{visited})
    score += point
#    puts %(score:#{score})
    vis = Marshal.load(Marshal.dump(visited))
    return score unless (edges = get_edges(v))
    edges.each do |edge|
      if visited.include?(edge.e)
        return "loop"
      end
    end
#    return "loop" if get_edges(v) - (visited)
    return score if v == goal
    vis << v
#    puts %(edge : #{edges})
    edges.each {|edge|
#      puts %(v:#{v},g:#{goal},v:#{vis})
#      puts %(v_before:#{vis})
#      puts %(edge.e: #{edge.e})
      ret = dfs(edge.e,goal,vis,score,edge.z)
      if ret != "loop"
#        puts "goal score #{ret}"
#        puts %(v_after:#{vis})
        $score << ret
#        return true
      else
        $score << "loop"
      end
    }
#    false
    false
  end
end

n,m = gets.chomp.split.map(&:to_i)
graph = []
m.times do
  input = gets.chomp.split.map(&:to_i)
  graph << {:s => input[0], :e => input[1], :z => input[2]}
end

$score = []
g = Graph.new(graph)
g.find(1,n)
if $score.include?("loop")
  puts "inf"
else
  $score.delete(false)
  p $score.max
end