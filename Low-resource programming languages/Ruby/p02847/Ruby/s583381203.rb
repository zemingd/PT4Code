s = gets.to_s

week = ['SUN','MON','TUE','WED','THU','FRI','SAT']

i = 0

if s == week[i]
	puts '7'
else
	while true
	i += 1	
	break if s == week[i]
end
	puts (7 - i)