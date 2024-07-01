s = gets.chomp
days = %W(SUN MON TUE WED THU FRI SAT)
puts 7 - days.find_index(s)
