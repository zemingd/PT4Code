days = %w[MON TUE WED THU FRI SAT SUN]
day = gets.strip
remain = 6 - days.find_index(day) 
remain == 0 ? 7 : remain
puts remain
