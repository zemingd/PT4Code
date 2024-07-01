a, b = gets.chomp.split.map(&:to_i)

puts (a + b).odd? ? (a + b )/ 2 + 1 : a + b