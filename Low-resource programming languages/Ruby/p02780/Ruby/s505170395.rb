N, K = gets.chomp.split(" ").map(&:to_i)
P = gets.chomp.split(" ").map(&:to_i)

idx = 0
sum = P[0, K].inject(&:+)
smax = sum
(1...(N-K)).each{|i|
  sum = sum - P[i] + P[i + K]
  (idx = i+1; smax = sum) if smax < sum
}

puts P[idx, K].inject(0){|r, x| r + (x + 1) / 2.0}
