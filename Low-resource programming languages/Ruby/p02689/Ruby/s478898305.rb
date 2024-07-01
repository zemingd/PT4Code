n, m = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
a, b = Array.new(m) { gets.split.map(&:to_i) }.transpose
graph = Array.new(n) { [] }
count = 0

a.zip(b).each do |a, b|
  graph[a - 1] << b - 1
  graph[b - 1] << a - 1
end

graph.each_with_index do |nodes, idx|
  if nodes.all? { |v| h[idx] > h[v] }
    count += 1
  end
end

puts count