a,b = gets.chomp.split(" ").map(&:to_i)

c = 100 ** a * b
puts a == 0 ? c + 1 : c
