require'set'

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

def reachable(s, g)
  result = Set.new([s])
  q = [s]
  until q.empty?
    c = q.shift
    g[c].each do |to|
      next if result.include?(to)
      result.add(to)
      q.push(to)
    end
  end
  result
end

from_1 = reachable(1, graph)
from_n = reachable(n, r_graph)
ava = from_1 & from_n

edges=edges.select {|a, b, c| ava.include?(a) && ava.include?(b) }

updated = false
INF = 10**14
dist=Array.new(n+1, INF)
dist[1]=0

n.times do
  updated=false
  edges.each do |from, to, cost|
    if dist[from]!=INF && dist[to] > dist[from] + cost
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

p -dist[n]