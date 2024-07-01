def num_of_days(string)
	days = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]
	days.each_with_index do |day, index|
		if string == day
			return (7 - index)
		end
	end
	-1
end

line = gets
puts num_of_days(line)
