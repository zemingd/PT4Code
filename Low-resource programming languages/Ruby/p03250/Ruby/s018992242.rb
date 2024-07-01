numbers = gets.chomp.split(" ").map(&:to_i)
numbers.sort!.reverse!
puts numbers[0]*10+numbers[1]+numbers[2]