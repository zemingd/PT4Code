a, b = gets.chomp.split
s1 = a * b.to_i
s2 = b * a.to_i
puts [s1, s2].sort.first
