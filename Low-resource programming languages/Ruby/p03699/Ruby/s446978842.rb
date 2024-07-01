n = gets.to_i
scores = n.times.map { gets.to_i }.sort!

ans = scores.inject(:+)
smin = scores.find { |s| s % 10 != 0 } || ans

ans -= smin if ans % 10 == 0
puts ans
