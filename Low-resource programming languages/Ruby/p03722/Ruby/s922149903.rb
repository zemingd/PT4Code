Edge = Struct.new(:from, :to, :cost)

N, M = gets.split.map(&:to_i)
edges = Array.new(M) { a, b, c = gets.split.map(&:to_i); Edge.new(a-1, b-1, -c) }

dist = Array.new(N, Float::INFINITY)
dist[0] = 0

edges.each {|e| p e}

count = 0
loop do
  count += 1
  update = false
  
  M.times do |i|
    e = edges[i]
    next if dist[e.from] == Float::INFINITY
    
    if dist[e.from] + e.cost < dist[e.to]
      dist[e.to] = dist[e.from] + e.cost
      update = true
    end
  end
  
  break unless update
  break if count == M
end

puts count == M ? "inf" : -dist[N-1]