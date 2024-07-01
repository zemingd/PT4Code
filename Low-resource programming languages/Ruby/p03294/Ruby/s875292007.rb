n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
max = a.inject(:+) - n
puts max