n = gets.chomp.to_i
h = gets.chomp.split(' ').map{ |e| e.to_i }

dp = [0, h[0]]

(n - 2).times{|ii|
  i = ii + 2
  cand1 = dp[1] + (h[i - 1] - h[i]).abs
  cand2 = dp[0] + (h[i - 2] - h[i]).abs
  dp[0] = dp[1]
  dp[1] = cand1 < cand2 ? cand1 : cand2
}
puts dp[1]
