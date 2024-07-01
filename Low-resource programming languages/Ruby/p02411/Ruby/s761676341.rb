while true
	tensu = gets.split.map(&:to_i)
	m = tensu[0]
	f = tensu[1]
	r = tensu[2]

	if m == -1 && f == -1 && r == -1
		break
	elsif m + f >= 80
		puts "A"
	elsif m + f >= 65 && m + f < 80
		puts "B"
	elsif m + f >= 50 && m + f < 65 || r >= 50
		puts "C"
	elsif m + f >= 30 && m + f < 50
		puts "D"
	else
		puts "F"
	end
end