n = gets.chomp.to_i
graph = Hash.new{ |h,k| h[k] = {} }

(n-1).times do |i|
  u, v, w = gets.chomp.split.map(&:to_i)
  graph[u][v] = w & 1
  graph[v][u] = w & 1
end

color = [0]
queue = graph[1].to_a
while q = queue.shift
  dist, parity = q
  next if color[dist-1] != nil

  color[dist-1] = parity

  graph[dist].each do |d, w|
    queue << [d, parity ^ w]
  end
end

puts(color.join("\n"))