n = gets.to_i
numbers = gets.split.map(&:to_i)

puts numbers.inject(:+) - n