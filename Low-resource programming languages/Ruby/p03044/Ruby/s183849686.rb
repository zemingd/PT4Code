n = gets.to_i
dp = Array.new(n + 1) { Array.new(n + 1, 0) }
g = Hash.new
res = Array.new(n)
(n - 1).times do
  u, v, w = gets.chomp.split.map(&:to_i)
  dp[u][v] = dp[v][u] = w % 2
  g[u] ||= []
  g[u] << v
  g[v] ||= []
  g[v] << u
end

q = [1]
res[0] = 0
while !q.empty?
  u = q.pop
  g[u].each do |v|
    next if !res[v - 1].nil?
    res[v - 1] = (res[u - 1] + dp[u][v]) % 2
    q << v
  end
end
puts res