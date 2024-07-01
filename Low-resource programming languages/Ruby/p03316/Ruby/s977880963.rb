number = gets.to_i
stringNumbers = number.to_s.split("")
sumNumber = stringNumbers.map(&:to_i).inject(:+)
puts number % sumNumber == 0 ? :Yes : :No