s = gets.strip.to_s

days = ['SUN', 'MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT' ]
next_day = 0

for x in days 
   if s == x.to_s
      next_day = 7 - days.index(x)
   end
end

puts next_day
