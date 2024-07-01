GRAPH = Hash.new { |h, k| h[k] = {} }

n = gets.to_i
(n - 1).times do
  u, v, w = gets.split.map(&:to_i)
  GRAPH[u - 1][v - 1] = w # 0-origin
end

# <0, 1>
COLORS = Array.new(n, 0)

# @param [Integer] v vertex
# @param [Integer] p parent
# @param [Integer] color 0, 1
def dfs(v = 0, p = nil, color = 1)
  COLORS[v] = color
  GRAPH[v].each do |nv, d|
    dfs(nv, v, color ^ (d & 1)) unless nv == p
  end
end
dfs

p *COLORS
