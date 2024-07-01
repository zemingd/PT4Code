INF  = Float::INFINITY
Edge = Struct.new(:from, :to, :cost)

class Graph
  attr :edges, :V, :E, :d
  def initialize(v,e)
    @V = v
    @E = e
    @edges = []
    @d = []
  end

  def add_graph_edge(u, v, w)
    @edges << Edge.new(u,v,w)
  end

  def bellman_ford(source=0)
    @d = Array.new(@V,INF)
    @d[source] = 0

    for count in 0...@V
      for i in 0...@edges.length
        v = edges[i].to
        u = edges[i].from
        c = edges[i].cost

        if @d[u] + c < @d[v]
          #p c
          @d[v] = @d[u] + c
          return false if (count == @V-1)
        end
      end
    end
    true
  end
end

lines = $stdin.read
array = lines.split("\n")
V,E = array[0].split(" ").map(&:to_i)
graph = Graph.new(V,E)

array[1..E].each do |str|
  a,b,c = str.split(" ").map(&:to_i)
  u,v,w = a-1,b-1,-c
  graph.add_graph_edge(u,v,w)
end

if graph.bellman_ford()
  puts graph.d.min.abs
else
  puts "inf"
end
