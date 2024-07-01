n = gets.to_i
dp = Array.new(100001, 100000)
dp[0], dp[1] = 0, 1
list = [1]
(1...10000).each do |i|
  break if 6 ** i > 100000
  list.push(6 ** i)
end
(1...10000).each do |i|
  break if 9 ** i > 100000
  list.push(9 ** i)
end
(2..n).each do |i|
  list.each do |j|
    dp[i] = [dp[i - j] + 1, dp[i]].min if i - j >= 0
  end
end
puts dp[n]