n = STDIN.gets.to_i
while n > 0

	line = STDIN.gets
	line =~ /(\d+)/
	a = $1.to_i
	line = STDIN.gets
	line =~ /(\d+)/
	b = $1.to_i
	
	puts a+b

	n -= 1
end