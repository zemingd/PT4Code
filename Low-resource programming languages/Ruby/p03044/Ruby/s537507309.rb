N = gets.to_i
edges = (N - 1).times.map do
  u, v, w = gets.split.map(&:to_i)
  [u - 1, v - 1, w]
end
graph = Array.new(N) { [] }
edges.each do |u, v, w|
  graph[u].push([v, w])
  graph[v].push([u, w])
end

def bfs(graph, s, colors)
  colors[s] = 0
  # [[u, parent, color], ...]
  queue = [[s, nil, colors[s]]]
  while !queue.empty?
    u, parent, color = queue.shift
    graph[u].each do |v, w|
      next if v == parent
      new_color = w.even? ? color : (color + 1) % 2
      colors[v] = new_color
      queue.push([v, u, new_color])
    end
  end
end

colors = Array.new(N)
bfs(graph, 0, colors)
colors.each do |c|
  puts c
end