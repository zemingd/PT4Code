if __FILE__ == $0 
	while line = gets
		args = line.split(" ").map{|e|e.to_f}
		x = args[0]
		y = args[1]

		puts "#{(x / y).to_i} #{(x % y).to_i} #{x / y}"
	end
end