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

m_abc = abc.map {|a, b, c| [a, b, -c] }

INF=10**15
dist = [INF]*(n+1)
dist[1]=0
q = [[1, 0]]
updated=false
n.times do
  updated=false

  break if q.empty?
  current, cost = q.shift
  m_abc.each do |from, to, cost|
    next unless available.include?(from) || available.include?(to)
    if dist[from] != INF && dist[to] > dist[from] + cost
      dist[to] = dist[from] + cost
      updated=true
    end
  end
end

if updated
  puts 'inf'
  exit
end

#p [available, from_1, from_n]
p dist[n]*-1