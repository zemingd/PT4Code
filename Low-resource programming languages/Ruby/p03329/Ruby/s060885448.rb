N = gets.chomp.to_i

pat = ([1] + (1..6).map{|i| 6**i} + (1..6).map{|i| 9**i}).select {|v| v <= N}
dp = {0=>0}

1.upto(N) do |i|
  dp[i] = 1 + pat.select {|v| i - v >= 0}.map {|v| dp[i-v]}.min
end
puts dp[N]
