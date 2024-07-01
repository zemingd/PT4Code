n = gets.to_i

graph = Array.new(n+1){[]}
visited = [false]*(n+1)
dist = [0]*(n+1)
stack = []
(n-1).times do |i|
  u,v,w = gets.split.map(&:to_i)
  graph[u] << [v,w]
  graph[v] << [u,w]
  stack << u
end

while k = stack.pop
  next if visited[k]
  visited[k] = true
  graph[k].each do |t,w|
    if !visited[t]
      stack << t
      dist[t] = dist[k] + w
    end
  end
end
1.upto(n) do |i|
  if dist[i] % 2 == 0
    p 0
  else
    p 1
  end
end
#p dist

