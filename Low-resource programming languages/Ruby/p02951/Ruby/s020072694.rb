a, b, c = gets.chomp.split.map(&:to_i)
p [b + c - a, 0].max
