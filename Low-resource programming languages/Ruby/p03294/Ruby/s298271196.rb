n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
puts a.inject(:+) - n