input = nil
while input = gets do
	input = input.split(" ", 2)
	a = input[0].to_i
	b = input[1].to_i
	puts "#{a+b}".size
end