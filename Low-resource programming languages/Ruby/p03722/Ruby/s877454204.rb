N, M = gets.split.map(&:to_i)
EDGES = M.times.map{ gets.split.map(&:to_i) }
#  Hash.new{|h, k| h[k] = [] }
#M.times.each do
#  a, b, c = gets.split.map(&:to_i)
#  EDGES[a] << [b, c]
#end

dist = Array.new(N+1, Float::INFINITY)
dist[1] = 0
predecessors = Array.new(N+1)

(N-1).times do
  EDGES.each do |a, b, c|
    if dist[b] > dist[a] - c
      dist[b] = dist[a] - c
      predecessors[b] = a
    end
  end
end

EDGES.each do |a, b, c|
  if dist[a] - c < dist[b]
    puts "inf"; exit
  end
end

p -dist[N]
