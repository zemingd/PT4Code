n, m = gets.strip.split.map(&:to_i)
abc = readlines.map {|line| line.strip.split.map(&:to_i) }

graph = Array.new(n+1) { [] }
reverse_graph = Array.new(n+1) { [] }
edges = []

abc.each do |a, b, c|
  edges << [a, b, (c)*-1]
  graph[a] << [b, (c)*-1]
  reverse_graph[b] << [a, (c)*-1]
end

def reachable(graph, s)
  visit = []
  visit.push(s)
  q=[s]
  until q.empty?
    u=q.shift
    graph[u].each do |n, _|
      next if visit.include?(n)
      visit.push(n)
      q.push(n)
    end
  end
  visit
end

reachable_from_s = reachable(graph, 1)
reachable_to_g = reachable(reverse_graph, n)
retrenched_nodes = (1..n).to_a.select {|t| reachable_from_s.include?(t) && reachable_to_g.include?(t) }

edges = edges.select {|from, to,  _| retrenched_nodes.include?(from) && retrenched_nodes.include?(to) }

INF = 10**9
dist = Array.new(n+1, INF)
dist[1]=0
c=0

loop do
  updated = false
  edges.each do |from, to, cost|
    if dist[from] != INF && dist[to] > dist[from] + cost
      dist[to] = dist[from] + cost
      updated=true
    end
  end
  break unless updated
  c+=1
  if c==n
    puts 'inf'
    exit
  end
end

p -dist[n]
