s = gets.chomp.split("")

count = 0
max = 0

s.each{ |ss|
	if ss == 'R' then
		count += 1
	else
		if max < count then
			max = count
		end
		count = 0
	end
}

puts max
