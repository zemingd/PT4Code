n, k = gets.chomp.split(" ").map(&:to_i)

costs = []
n.times do
  costs << gets.chomp.to_i
end

INF = 1 << 30
dp = Array.new(n, INF)

(0...n).each do |i|
  if i == 0
    dp[i] = 0
    next
  end

  u = [i, k].min

  min = INF
  (1..u).to_a.reverse.each do |j|
    x = (costs[i] - costs[i-j]).abs + dp[i-j]
    if x < min
      min = x
    end
  end
  dp[i] = min
end

puts(dp[-1])
