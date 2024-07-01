N = gets.to_i
s = Array.new(N) { gets.to_i}

max = N * s.max
dp = Array.new(N+1) { Array.new(max + 1, false) }
(N+1).times { |i| dp[i][0] = true }

N.times do |i|
  (1..max).each do |j|
    dp[i+1][j] |= dp[i][j]
    dp[i+1][j] |= dp[i][j-s[i]] if j >= s[i]
  end
end

points = dp[N].map.with_index
              .select { |x, i| x and i % 10 != 0 }

puts points.size == 0 ? 0 : points.max_by { |_, i| i }.last