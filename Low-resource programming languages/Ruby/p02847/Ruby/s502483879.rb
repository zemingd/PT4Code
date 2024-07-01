days = %w[SUN MON TUE WED THU FRI SAT]
day = gets.strip
remain = 7 - days.find_index(day)
puts remain == 0 ? 7 : remain
