while true
	input = gets.split(" ")
	array = input.map(&:to_i).sort
	a = array[0]
	b = array[1]
	break if a == 0 && b == 0
	puts "#{a} #{b}"
end