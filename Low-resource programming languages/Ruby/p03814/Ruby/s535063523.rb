str = gets.split("")
a = 0
z = 0
str.each do |s|
	if s == "A"
		a = str.index("#{s}")
	end
	if s == "Z"
		z = str.index("#{s}")
	end
end
puts z - a + 1

