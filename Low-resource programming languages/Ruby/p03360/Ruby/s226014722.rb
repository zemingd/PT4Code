a, b, c = gets.chomp.split.map(&:to_i)
k = gets.chomp.to_i

max = [a, b, c].max
puts a + b + c - max + max * 2 ** k