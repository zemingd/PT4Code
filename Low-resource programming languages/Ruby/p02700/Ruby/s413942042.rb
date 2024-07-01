a, b, c, d = gets.chomp.split(" ").map(&:to_i)
flag = true
while a > 0 && c > 0
	if flag then
		c -= b
	else
		a -= d
	end
	flag = !flag
end
puts a > 0 ? "Yes" : "No"
