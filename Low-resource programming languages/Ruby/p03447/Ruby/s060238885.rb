x = gets.chomp.split(" ").map(&:to_i)[0]
a = gets.chomp.split(" ").map(&:to_i)[0]
b = gets.chomp.split(" ").map(&:to_i)[0]

puts ((x - a) % b)
