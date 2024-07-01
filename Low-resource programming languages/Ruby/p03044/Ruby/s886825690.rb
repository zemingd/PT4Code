n = gets.to_i
edges = []
(n - 1).times { edges << gets.split.map(&:to_i) }
graph = Array.new(n + 1) { Array.new }
edges.each do |f, t, w|
  graph[f] << [f, t, w]
  graph[t] << [t, f, w]
end

weights = Array.new(n + 1)
queue = [[1, 1, 0]]

until queue.empty?
  from, to, weight = queue.shift
  weights[to] = weight
  graph[to].each do |f, t, w|
    next if t == from
    queue << [f, t, w + weight]
  end
end

weights[1..n].each do |weight|
  puts weight.odd? ? 1 : 0
end