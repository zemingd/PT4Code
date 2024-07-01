require 'scanf'
str = ""
inp = gets.chomp
inp = inp.downcase
inp = inp.strip
cnt = 0
while input = gets.chomp
	if input == "END_OF_TEXT"
		break
	end
	str = str +" "+ input
end
str2 = str.split(" ")
str2.each do |s|
	if s.downcase == inp
		cnt = cnt + 1
	end
end
puts cnt