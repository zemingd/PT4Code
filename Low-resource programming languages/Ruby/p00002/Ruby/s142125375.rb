count = 1
while count <201
	num_input =  STDIN.gets.chomp
	array = num_input.split("\s")
	sum = array[0].to_i + array[1].to_i
	p sum.to_s.length
	count += 1
end