n, k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
dp = Array.new(n)
dp[0] = 0
(1...n).each do |i|
  dp[i] = (1..[k, i].min).map{|j| dp[i-j] + (h[i] - h[i-j]).abs}.min
end
puts dp.last
