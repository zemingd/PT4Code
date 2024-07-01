str = gets.chomp.split("")
str.reverse!
str.length.times do |i|
	a = str[i]
	print a
end