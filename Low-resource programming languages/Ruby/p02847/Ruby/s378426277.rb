w = %w(SUN MON TUE WED THU FRI SAT)
s = gets.chomp
puts w[(w.index(s) + 1) % 7]
