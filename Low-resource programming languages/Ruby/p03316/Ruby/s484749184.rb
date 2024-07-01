number = gets.to_i
stringNumbers = number.to_s.split("")
sumNumber = 0
stringNumbers.each do |num|
	sumNumber += num.to_i
end
puts number % sumNumber == 0 ? :Yes : :No