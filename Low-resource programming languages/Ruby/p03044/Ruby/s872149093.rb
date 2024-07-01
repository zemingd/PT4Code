n = gets.to_i

graph = Array.new(n+1){[]}
dist = [-1]*(n+1)
stack = []
(n-1).times do |i|
  u,v,w = gets.split.map(&:to_i)
  graph[u] << [v,w]
  graph[v] << [u,w]
  stack << u
end

while k = stack.pop
  dist[k] = 0 if dist[k] == -1
  graph[k].each do |t,w|
    if dist[t] == -1
      stack = [t] + stack
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
