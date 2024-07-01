if __FILE__ == $0 
	while line = gets
		args = line.split(" ").map{|e|e.to_i}.sort
		x = args[0].to_i
		y = args[1].to_i
		if x == 0 and y == 0
			break;
		end
		puts "#{x} #{y}"
	end
end