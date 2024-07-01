numbers = gets.chomp.split(" ").map(&:to_i)
k = gets.to_i
numbers.sort!
numbers[2] *= 2 ** k
puts numbers.inject(:+)