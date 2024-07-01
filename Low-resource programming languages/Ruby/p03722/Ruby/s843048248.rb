N, M = gets.split.map(&:to_i)
EDGES = M.times.map{ gets.split.map(&:to_i) }

dist = Array.new(N+1, Float::INFINITY)
dist[1] = 0

(N-1).times do
  EDGES.each do |a, b, c|
    if dist[b] > dist[a] - c
      dist[b] = dist[a] - c
    end
  end
end

ans1 = -dist[N]
N.times do
  EDGES.each do |a, b, c|
    if dist[b] > dist[a] - c
      dist[b] = dist[a] - c
    end
  end
end
ans2 = -dist[N]

puts(ans1 == ans2 ? ans1 : "inf")

