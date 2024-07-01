N, M = gets.split.map(&:to_i)

edges = M.times.map do
  u, v, c = gets.split.map(&:to_i)
  u -= 1
  v -= 1
  [u, v, c]
end
graph = Array.new(N) { [] }
reversed_graph = Array.new(N) { [] }
edges.each do |u, v, c|
  graph[u].push([v, c])
  reversed_graph[v].push([u, c])
end

def reachable_vertexes(graph, s)
  visited = Set.new
  queue = [s]
  visited.add(s)
  while !queue.empty?
    u = queue.shift
    graph[u].each do |(v, _)|
      next if visited.include?(v)
      visited.add(v)
      queue.push(v)
    end
  end
  visited
end

def bellman_ford(edges, s, v_size, init)
  d = Array.new(N, init)
  d[s] = 0
  c = 0
  loop do
    is_update = false
    edges.each do |(u, v, w)|
      if d[u] != init && d[u] + w > d[v]
        d[v] = d[u] + w
        is_update = true
      end
    end
    return d if !is_update
    c += 1
    return nil if c == v_size
  end
end

require 'set'
reachable_from_1 = reachable_vertexes(graph, 0)
reachable_to_n = reachable_vertexes(reversed_graph, N - 1)
v_set = Set.new
N.times do |v|
  v_set.add(v) if reachable_from_1.include?(v) && reachable_to_n.include?(v)
end
new_edges = edges.select do |(u, v, _)|
  v_set.include?(u) && v_set.include?(v)
end
ans = bellman_ford(new_edges, 0, v_set.size, -(1 << 60))
puts(ans.nil? ? 'inf' : ans[N - 1])