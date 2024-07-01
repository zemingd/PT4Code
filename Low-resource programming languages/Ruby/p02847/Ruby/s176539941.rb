s = gets.chomp
day = %w(SUN MON TUE WED THU FRI SAT)
next_day = day.zip(0...7).to_h
if s == "SUN"
    puts 7
else puts next_day[s] 
end