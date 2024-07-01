a, b = gets.chomp.split.map(&:to_i)
puts b * (b - 1) ** (a - 1)
