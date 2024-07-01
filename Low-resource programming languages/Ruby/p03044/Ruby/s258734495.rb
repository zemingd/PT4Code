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

Dist = Array.new(N, -1)  # distance of each node

def dfs(now)
  Graph[now].each do |(v, w)|
    if (Dist[v] >= 0)  # Alreday visited
      next
    end
    Dist[v] = Dist[now] + w
    dfs(v)
  end
end

Dist[0] = 0
dfs(0)

Dist.each do |d|
  if (d % 2 == 0)
    p 0
  else
    p 1
  end
end