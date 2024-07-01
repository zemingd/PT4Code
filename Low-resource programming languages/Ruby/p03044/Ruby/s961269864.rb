GRAPH = Hash.new { |h, k| h[k] = {} }

n = gets.to_i
(n - 1).times do
  u, v, w = gets.split.map(&:to_i)
  # 0-origin
  u -= 1
  v -= 1
  GRAPH[u][v] = w
  GRAPH[v][u] = w
end

# <0, 1>
COLORS = Array.new(n, 0)

# DFS the graph as a tree
# @param [Integer] v vertex
# @param [Integer, nil] p parent
# @param [Integer] color 0, 1
def dfs(v = 0, p = nil, color = 1)
  COLORS[v] = color
  GRAPH[v].each do |next_v, d|
    dfs(next_v, v, color ^ (d & 1)) unless next_v == p
  end
end

dfs

p *COLORS
