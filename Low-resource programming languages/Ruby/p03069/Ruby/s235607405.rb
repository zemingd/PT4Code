n = gets.to_i
s = gets.chomp
puts [s[0..n-2].count("#"), s.count(".")].min
