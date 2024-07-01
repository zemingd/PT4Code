Edge = Struct.new(:from, :to, :cost)

N, M = gets.split.map(&:to_i)
edges = Array.new(M) { a, b, c = gets.split.map(&:to_i); Edge.new(a-1, b-1, -c) }

dist = Array.new(N, Float::INFINITY)
dist[0] = 0

count = 0
update = false
loop do
  count += 1
  update = false
  
  M.times do |i|
    e = edges[i]
    next if dist[e.from] == Float::INFINITY
    
    if dist[e.from] + e.cost < dist[e.to]
      dist[e.to] = dist[e.from] + e.cost
      update = true if e.to == N-1
    end
  end
  
  break unless update
  break if count >= M+1
end

puts update ? "inf" : -dist[N-1]