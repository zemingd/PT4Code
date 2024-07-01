# p (0..6).to_a.map{|j| [6 ** j, 9 ** j] }.flatten.uniq
a = [1, 6, 9, 36, 81, 216, 729, 1296, 6561, 7776, 59049, 46656, 531441]

m, dp = gets.to_s.to_i, [0]
(1..m).each {|i|
  t = 987654321
  a.select {|j| i - j >= 0 }.map{|j| i - j }.each{|c| t = dp[c] if t > dp[c] }
  dp.push(t + 1)
}
puts dp[-1]