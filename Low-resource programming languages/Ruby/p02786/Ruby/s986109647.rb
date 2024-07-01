n = gets.chomp.to_i
a = Math.log2(n).ceil
puts 2 ** (a + 1) - 1
