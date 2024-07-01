n = gets.strip.to_i
uvw = readlines.map {|line| line.strip.split.map(&:to_i) }

graph = Array.new(n+1) { [] }
uvw.each do|u, v, w|
  graph[u] << [v, w]
  graph[v] << [u, w]
end

q = [[1, 0]]
dist = [nil, 0]
until q.empty?
  from, from_cost = q.shift
  graph[from].each do |to, to_cost|
    next if dist[to]
    current_cost = from_cost+to_cost
    dist[to] = current_cost
    q.push << [to, current_cost]
  end
end

#puts (1..n).map {|e| dist[e] }
puts (1..n).map {|e| dist[e].even? ? 0 : 1 }
