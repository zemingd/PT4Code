n = gets.chomp.to_i
graph = Hash.new{ |h,k| h[k] = {} }

(n-1).times do |i|
  u, v, w = gets.chomp.split.map(&:to_i)
  graph[u][v] = w
  graph[v][u] = w
end

color = [0]
queue = graph[1].to_a
while q = queue.shift
  dist, weight = q
  next if color[dist-1] != nil

  color[dist-1] = weight % 2

  queue += graph[dist].to_a
end

puts(color.join(" "))