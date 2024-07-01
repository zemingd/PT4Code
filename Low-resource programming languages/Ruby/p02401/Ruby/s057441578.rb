while true
	num = gets.chomp
	break if num.include?("?")
	puts eval(num)
end