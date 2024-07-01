N, K = gets.split.map &:to_i
P = gets.split.map &:to_i

cusum = [sum = 0] + P.map{|n| sum += n }

p (0..N-K).map{|l|
  r = l + K
  (cusum[r] - cusum[l] + K) / 2.0
}.max