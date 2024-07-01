a, b = gets.chomp.split.map(&:to_i)

x = a + b

puts x.modulo(2).zero? ? x / 2 : 'IMPOSSIBLE'