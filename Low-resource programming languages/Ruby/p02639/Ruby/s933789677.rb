x = []
x = gets.split(" ").map(&:to_i)
x.each do |i|
	puts i+1 if x[i] == 0
end