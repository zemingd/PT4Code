require 'scanf'
str = ""
inp = gets.chomp
inp = inp.downcase
inp = inp.strip
while input = gets.chomp
	if input == "END_OF_TEXT"
		break
	end
	str = str + input
end
puts str.scan(/^#{inp}$/i).size