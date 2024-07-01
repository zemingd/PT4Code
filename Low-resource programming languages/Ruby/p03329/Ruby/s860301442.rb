m, dp = gets.to_s.to_i, [0]
(1..m).each {|i|
  cans = (0..6).to_a.map{|j| [6 ** j, 9 ** j] }.flatten.select {|j| i - j >= 0 }.map{|j| i - j }.uniq
  dp.push(cans.map{|j| dp[j] }.min + 1)
}
p dp.last