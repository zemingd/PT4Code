n = gets.to_i
scores = n.times.map { gets.to_i }.sort!
ans = scores.inject(:+)

if ans % 10 != 0
  puts ans
else
  smin = scores.find { |s| s % 10 != 0 } || ans
  puts ans - smin
end
