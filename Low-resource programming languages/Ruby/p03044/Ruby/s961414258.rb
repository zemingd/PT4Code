n = gets.to_i

edges = Array.new(n){Array.new}

(n-1).times do |i|
  u, v, w = gets.split.map(&:to_i)
  edges[u-1] << [v-1, w]
  edges[v-1] << [u-1, w]
end

dist = Array.new(n, 0)
visited = Array.new(n,false)
stack = [0]

while !stack.empty? do
  next_stack = []
  stack.each do |from|
    visited[from] = true

    edges[from].each do |(to, wgt)|
      next if visited[to]
      dist[to] = dist[from] + wgt
      next_stack << to
    end
  end
  stack = next_stack
end

n.times do |i|
  if dist[i] %2 == 0
    puts "0"
  else
    puts "1"
  end
end
