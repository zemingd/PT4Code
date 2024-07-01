N = gets.to_i
W = gets.chomp.split(" ").map(&:to_i)

s1 = W[0]
s2 = W[1...N].inject(:+)
ans = (s2 - s1).abs
(1..N-2).each{|t|
  s1 += W[t]
  s2 -= W[t]
  ans = (s2 - s1).abs if ans > (s2 - s1).abs
  break if s2 - s1 < 0
}

puts ans
