a, b = gets.chomp.split(' ')

puts [a * b.to_i, b * a.to_i].min
