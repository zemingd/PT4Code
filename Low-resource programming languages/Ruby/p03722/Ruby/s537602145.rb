require 'set'

n, m = gets.strip.split.map(&:to_i)
abc = readlines.map {|line| line.strip.split.map(&:to_i) }

graph = Array.new(n+1) { [] }
r_graph = Array.new(n+1) { [] }
edges = []
abc.each do |a, b, c|
  graph[a] << b
  r_graph[b] << a
  edges << [a, b, -c]
end

# calc from_1, from_n
def reachable(s, graph)
  q=[s]
  visited = Set.new(q)
  until q.empty?
    c = q.shift
    graph[c].each do |to|
      next if visited.include?(to)
      visited.add(to)
      q.push(to)
    end
  end
  visited
end
from_1 = reachable(1, graph)
from_n = reachable(n, r_graph)
available_nodes = from_1 & from_n

# retrench edges
edges = edges.select {|a, b, _| available_nodes.include?(a) && available_nodes.include?(b) }

# w-f method
INF = 10**14
updated = false
dist = Array.new(n+1, INF)
dist[1]=0
n.times do
  updated = false
  edges.each do |from, to, cost|
    next if dist[from]==INF
    if dist[to] > dist[from] + cost
      dist[to] = dist[from] + cost
      updated = true
    end
  end
  break unless updated
end

if updated
  puts 'inf'
  exit
end


#answer
#p from_1
#p from_n
#p available_nodes

#p dist
p -dist[n]
