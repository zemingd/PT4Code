n, a, b = gets.chomp.split.map(&:to_i)

puts [b, a * n].min
