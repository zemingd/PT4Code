n, k = gets.chomp.split(' ').map(&:to_i)
l = gets.chomp.split(' ').map(&:to_i)

puts l.sort.reverse[0..(k - 1)].inject(&:+)
