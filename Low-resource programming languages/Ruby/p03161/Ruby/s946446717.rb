n, k = gets.split(" ").map(&:to_i)
h = gets.split(" ").map(&:to_i)

dp = Array.new(n, 1.0 / 0)
dp[0] = 0

(0..(n - 1)).each do |i|
  (1..k).each do |j|
    ii = i + j
    dp[ii] = [dp[ii], dp[i] + (h[i] - h[ii]).abs].min if ii < n
  end
end

puts dp[-1]