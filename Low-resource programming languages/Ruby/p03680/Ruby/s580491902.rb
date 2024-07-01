N=gets.to_i
I=Array.new(N+1)
(1 .. N).each{|i| I[i] = gets.to_i}

dp = Array.new(N+1, -1)
N.times.inject(1) do |from, d|
  break if dp[from] > 0
  
  dp[from] = d
  break if from == 2
  
  I[from]
end
puts dp[2]
