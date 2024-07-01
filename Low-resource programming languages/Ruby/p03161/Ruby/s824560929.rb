n, k = gets.chomp.split(" ").map(&:to_i)
h = gets.chomp.split(" ").map(&:to_i)

dp = Array.new(n, 0)
dp[0] = 0
dp[1] = (h[1] - h[0]).abs

for i in 2..n - 1
  min = Float::INFINITY
  for j in 1..k
    if i - j < 0
      break
    end

    cost = dp[i - j] + (h[i] - h[i - j]).abs

    if cost < min
      min = cost
    end
  end
  dp[i] = min
end

puts dp[n - 1]