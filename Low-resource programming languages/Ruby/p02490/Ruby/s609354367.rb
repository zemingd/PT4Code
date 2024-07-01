while true
	input = gets.split(" ")
	a = input[0].to_i
	b = input[1].to_i
	break if a == 0 && b == 0
	if a < b then puts "#{a} #{b}"
	else then puts "#{b} #{a}"
end