n = gets.to_i
l = gets.chomp.split(" ").map(&:to_i)
max_l = l.max
l.delete(max_l)

puts max_l < l.inject(:+) ? 'Yes' : 'No'