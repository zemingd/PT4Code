n, m = gets.chomp.split.map(&:to_i)
a, b = readlines.map{|line| line.chomp.split.map(&:to_i)}.transpose

puts (1..n).map{|i| a.count(i) + b.count(i)}