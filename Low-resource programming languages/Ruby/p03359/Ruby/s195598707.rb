a, b = gets.chomp.split.map(&:to_i)
a -= 1 if a > b
p a