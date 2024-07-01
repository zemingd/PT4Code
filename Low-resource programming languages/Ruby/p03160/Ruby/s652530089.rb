n = gets.chomp.to_i
h = gets.chomp.split(' ').map{ |e| e.to_i }

dp = [0, (h[0] - h[1]).abs]

(n - 2).times{|ii|
  i = ii + 2
  cand1 = dp[i - 1] + (h[i - 1] - h[i]).abs
  cand2 = dp[i - 2] + (h[i - 2] - h[i]).abs
  # dp[0] = dp[1]
  if cand1 < cand2
    dp.push(cand1)
  else
    dp.push(cand2)
  end
  # p [h, dp]
}
puts dp.last
