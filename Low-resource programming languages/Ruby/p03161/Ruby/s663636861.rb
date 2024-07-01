n, k = gets.chomp.split.map(&:to_i)
h = gets.chomp.split.map(&:to_i)

dp = Array.new(n, 0)

1.upto(n - 1) do |i|
  dp[i] = (([0, i - k].max)..(i - 1)).to_a.map {|j| dp[j] + (h[i] - h[j]).abs}.min
end

puts dp[n - 1]