n, a, b = gets.chomp.split.map(&:to_i)

array = [n * a, b].min

puts array