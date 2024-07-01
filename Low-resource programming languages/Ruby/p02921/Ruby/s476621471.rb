s = gets.chomp.split("")
t = gets.chomp.split("")

count = 0

s.each_with_index{ |x, i|
	if s[i] == t[i] then
		count += 1
	end
}

puts count
