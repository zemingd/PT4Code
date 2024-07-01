INF = -9999999999999
n, m = gets.split.map(&:to_i)
edges = $<.map{|e| e.split.map(&:to_i) }
def BellmanFord(edges, num_v)
  dist = Array.new(num_v, INF)
  dist[0] = 0
  num_v.times{|i|
    edges.each{|edge|
      if dist[edge[1]-1] < dist[edge[0]-1] + edge[2]
        dist[edge[1]-1] = dist[edge[0]-1] + edge[2]
        return ["inf"] if i==num_v-1
      end
    }
  }
  dist
end
puts BellmanFord(edges, n).pop