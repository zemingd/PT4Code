n,w = gets.split.map(&:to_i)
dp = Array.new(n){[0]*w}
n.times do |i|
  a,b = gets.split.map(&:to_i)
  if i == 0
    (a..w).each {|j| dp[0][j] = b}
    next
  end
  (0..w).each do |j|
    comp = dp[i-1][j-a]+b
    comp = 0 if j-a < 0
    dp[i][j] = [comp, dp[i-1][j]].max
  end
end

p dp[-1][-1]
