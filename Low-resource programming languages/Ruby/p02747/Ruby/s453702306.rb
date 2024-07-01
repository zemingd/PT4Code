str = gets
len = str.length
key = 0
if	len%2 == 1
	puts "No"
	exit
end

len.times do |i|
	if key == 0
		if str[i] == "h"
			key = 1
		else
			puts "No"
			exit
		end
	else
		if str[i] == "i"
			key = 0
		else
			puts "No"
			exit
		end
	end
end

puts "Yes"