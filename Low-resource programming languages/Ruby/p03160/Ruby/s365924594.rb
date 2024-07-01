INF = 1 << 60

n = gets.to_i
hs = gets.split.map(&:to_i)

# minimize
dp = Array.new(n, INF)
# init
dp[0] = 0
# change min
n.times do |i|
  [1, 2].each do |d|
    j = i + d
    next unless j < n
    dp[j] = [dp[j], dp[i] + (hs[i] - hs[j]).abs].min
  end
end

p dp[n - 1]
