INF = 1 << 60

n, k = gets.split.map(&:to_i)
hs = gets.split.map(&:to_i)

# minimize
dp = Array.new(n, INF)
# init
dp[0] = 0
# change min
r = 1..k
n.times do |i|
  r.each do |d|
    j = i + d
    next unless j < n
    # inline min
    a = dp[j]
    b = dp[i] + (hs[i] - hs[j]).abs
    dp[j] = a <= b ? a : b
  end
end

p dp.last
