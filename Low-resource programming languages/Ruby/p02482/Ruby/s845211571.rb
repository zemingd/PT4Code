if __FILE__ == $0 
	args = STDIN.gets.split(" ")
	a = args[0].to_i
	b = args[1].to_i
	if a > b then
		puts 'a > b'

	elsif a < b then
		puts 'a < b'

	else
		puts 'a == b'
	end
end