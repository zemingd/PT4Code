loop do
	x, y = gets.split.map{|s|s.to_i}.sort
	break if x == 0 && y == 0
	puts x.to_s + " " + y.to_s
end