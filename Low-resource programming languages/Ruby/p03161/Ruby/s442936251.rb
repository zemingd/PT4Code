def frog2(n, k, h)
  dp = Array.new(n, 0)
  1.upto(n - 1) do |i|
    tmp = dp[i - 1] + (h[i] - h[i - 1]).abs
    2.upto(k) do |j|
      break if i - j < 0
      tmp = [tmp, dp[i - j] + (h[i] - h[i - j]).abs ].min
    end
    dp[i] = tmp
  end

  puts dp[n - 1]
end

n, k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
puts frog2(n, k, h)
