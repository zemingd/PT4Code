N = gets.chomp.to_i
h = gets.chomp.split.map(&:to_i)
dp = [0] * (N + 1)

(1..N).each do |i|
  if i == 1
    dp[i] = 0
  elsif i == 2
    dp[i] = dp[0] + (h[1].to_i - h[0].to_i).abs
  else
    dp[i] = [ dp[i-1] + (h[i-1].to_i - h[i-2].to_i).abs, dp[i-2] + (h[i-1].to_i - h[i-3].to_i).abs ].min
  end
end

puts dp[N]