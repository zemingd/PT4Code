w = %w(MON TUE WED THU FRI SAT SUN)
s = gets.chomp
ans = 6 - w.index(s)
ans = 7 if ans == 0
puts ans
