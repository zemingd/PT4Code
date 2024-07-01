# N, K = gets.chomp.split.map(&:to_i)
N = gets.chomp.to_i
Graph = {}
(N-1).times do 
  u, v, w = gets.chomp.split.map(&:to_i)
  u -= 1
  v -= 1
  Graph[u] ||= []
  Graph[u] << [v, w]
  Graph[v] ||= []
  Graph[v] << [u, w]
end

dist = Array.new(N, -1)  # distance of each node
dist[0] = 0
q = [0]
while (q.size() > 0)
  from = q.shift
  Graph[from].each do |(to, w)|
    if (dist[to] >= 0)  # Alreday visited
      next
    end
    dist[to] = dist[from] + w
    q << to
  end
end

dist.each do |d|
  if (d % 2 == 0)
    p 0
  else
    p 1
  end
end