N = gets.to_i

GRAPH = Hash.new { |h, k| h[k] = {} }
edges = (N - 1).times.map { gets.split.map(&:to_i) }

edges.each do |from, to, len|
  GRAPH[from][to] = len
  GRAPH[to][from] = len
end

queue = [[1, 0]]
visited = {}
ans = Array.new(N)

until queue.empty?
  v, dist = queue.shift

  if dist.even?
    ans[v - 1] = 0
  else
    ans[v - 1] = 1
  end

  next if visited[v]
  visited[v] = true

  GRAPH[v].each do |n, len|
    queue << [n, dist + len]
  end
end

puts ans
