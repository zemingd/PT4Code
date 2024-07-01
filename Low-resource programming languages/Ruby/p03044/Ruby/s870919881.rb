n = gets.rstrip.to_i

graph = Hash.new{|h, k| h[k] = {} }
edges = (n-1).times.map{ gets.rstrip.split.map(&:to_i) }

edges.each do | from, to, len |
  graph[from][to] = len
  graph[to][from] = len
end

queue = [[1, 0]]
visited = {}
ans = Array.new(n)

until queue.empty?
  v, dist = queue.shift

  if dist.even?
    ans[v-1] = 0
  else
    ans[v-1] = 1
  end

  next if visited[v]
  visited[v] = true

  graph[v].each do | n, len |
    queue << [n, dist + len]
  end
end

puts ans
