n = gets.to_i
array = gets.split(" ").map(&:to_i)
puts array.inject(:+) - n