week = [ "MON", "TUE", "WED", "THU", "FRI", "SAT", "SUN"]
day = gets.chomp
if day == "SUN"
    puts 7
else
    puts 6 - week.index(day)
end