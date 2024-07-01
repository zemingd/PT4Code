require 'scanf'
#p input
str = ""
#input = gets.split("")
#puts input[3]
inp = gets.chomp
while input = gets.chomp
	if input == "END_OF_TEXT"
		break
	end
	str = str + input
end
puts str.scan(/#{inp}/).size