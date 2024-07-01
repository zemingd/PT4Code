n, m = gets.strip.split.map(&:to_i)
abc = readlines.map {|line| line.strip.split.map(&:to_i) }

graph = Array.new(n+1){ [] }
r_graph = Array.new(n+1){ [] }
abc.each do |a, b, c|
  graph[a] << [b, -c]
  r_graph[b] << [a, -c]
end

def reachable(s, g, graph)
  result = []
  q = [s]
  result = [s]
  until q.empty?
    c=q.shift
    graph[c].each do |nex, _|
      next if result.include?(nex)
      q << nex
      result << nex
    end
  end
  result
end

from_1 = reachable(1, n, graph)
from_n = reachable(n, 1, r_graph)
available = from_1 & from_n

INF=-1*10**16
dist = [INF]*(n+1)
dist[1]=0
q = [[1, 0]]
updated=false
n.times do
  updated=false

  break if q.empty?
  c, cost = q.shift
  graph[c].each do |nex, n_cost|
    next unless available.include?(nex)
    if dist[nex] > dist[c] + n_cost
      dist[nex] = dist[c] + n_cost
      q.push([nex, cost+n_cost])
      updated=true
    end
  end
end

if updated
  puts 'inf'
  exit
end

#p [from_1, from_n, available]
p dist[n]*-1
