n = gets.to_i
arr = gets.split(" ").map(&:to_i)

puts arr.inject(:+) - n