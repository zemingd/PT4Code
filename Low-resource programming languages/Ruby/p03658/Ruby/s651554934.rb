n, k = gets.chomp.split(" ").map(&:to_i)
l = gets.chomp.split(" ").map(&:to_i).sort.reverse

puts l[0...k].inject(:+)