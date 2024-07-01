ans = 0
loop do
	tmp = gets.split(" ")
	break if tmp[1] == "?"
	ans = tmp[0].to_i + tmp[2].to_i if tmp[1] == "+"
	ans = tmp[0].to_i - tmp[2].to_i if tmp[1] == "-"
	ans = tmp[0].to_i * tmp[2].to_i if tmp[1] == "*"
	ans = tmp[0].to_i / tmp[2].to_i if tmp[1] == "/"
	puts ans
end