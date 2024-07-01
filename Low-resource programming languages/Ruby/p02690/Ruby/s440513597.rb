x = gets.to_i
(-200..200).each{ |a|
	(-200..200).each{ |b|
		if a ** 5 - b ** 5 == x then
			puts [a,b].join(" ")
			exit
		end
	}
}