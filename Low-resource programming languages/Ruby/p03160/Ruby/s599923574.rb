n = gets.chomp.to_i
h = gets.chomp.split(' ').map{ |e| e.to_i }

dp = [0, h[0]]

(n - 2).times{|ii|
  i = ii + 2
  cand1 = Math.abs(h[i - 1] - h[i])
  cand2 = Math.abs(h[i - 2] - h[i])
  min = cand1 < cand2 ? dp[i - 1] + cand1 : dp[i - 2] + cand2
  dp.push(min)
}
puts dp.last
