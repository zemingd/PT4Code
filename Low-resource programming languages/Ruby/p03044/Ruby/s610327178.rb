tree = Hash.new { |h, k| h[k] = {} }
n = gets.to_i
(n - 1).times do
  u, v, w = gets.split.map(&:to_i)
  tree[u - 1][v - 1] = w # 0-origin
end

# colors <0, 1>
cs = Array.new(n, 0)

# @param [Hash] tree
# @param [Array] cs
# @param [Integer] i starting
# @param [Integer] p parity
def dfs(tree, cs, i = 0, p = 1)
  cs[i] = p
  tree[i].each do |j, d|
    dfs(tree, cs, j, p + d % 2)
  end
end

p *cs
