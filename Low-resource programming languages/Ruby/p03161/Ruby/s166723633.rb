n, k = gets.chomp.split(" ").map(&:to_i)
h = gets.chomp.split(" ").map(&:to_i)
dp = Array.new(n) { nil }
dp[0] = 0
n.times do |i|
  dp[i] = [i - k, 0].max.upto([i - 1, 0].max).map do |j|
    dp[j] + (h[i] - h[j]).abs
  end.min
end
puts dp[n - 1]