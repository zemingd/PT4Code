ays = %w[SUN MON TUE WED THU FRI SAT]
i = days.index(gets.chomp)
puts i.zero? ? 7 : (7 - i)