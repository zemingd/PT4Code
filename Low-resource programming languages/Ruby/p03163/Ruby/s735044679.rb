n, w = STDIN.gets.split.map(&:to_i)

items = Array.new(n)

n.times do |i|
  items[i] = STDIN.gets.split.map(&:to_i)
end

dp = Array.new(n + 1) { Array.new(w + 1) {0} }

for i in 1..n do
  weight = items[i-1][0]
  value = items[i-1][1]
  for j in 0..w do
    if j - weight >= 0
      dp[i][j] = [dp[i-1][j], dp[i-1][j - weight] + value].max
    else
      dp[i][j] = dp[i-1][j]
    end
  end
end

p dp[-1].max
