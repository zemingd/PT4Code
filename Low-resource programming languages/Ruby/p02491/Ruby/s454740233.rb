if __FILE__ == $0 
	args = gets.split(" ").map{|e|e.to_f}
	x = args[0]
	y = args[1]
	puts "#{(x / y).to_i} #{(x % y).to_i} #{sprintf("%.5f", x / y)}"
end