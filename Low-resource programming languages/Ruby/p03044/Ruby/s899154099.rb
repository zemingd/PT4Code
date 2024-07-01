N = gets.to_i

graph = Array.new(N) {
  []
}

$colors = Array.new(N, 0)

(N - 1).times do
  u, v, w = gets.split.map(&:to_i)

  graph[u - 1] << [v - 1, w % 2]
  graph[v - 1] << [u - 1, w % 2]
end

def search(graph, path, t, c)
  path << t
  graph[t].each do |d|
    next if path.include?(d[0])
    c2 = c ^ d[1]
    $colors[d[0]]= c2
    search(graph, path.dup, d[0], c2)
  end
end

search(graph, [], 0, 0)

puts $colors
