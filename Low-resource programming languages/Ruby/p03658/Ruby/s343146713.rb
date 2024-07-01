n, k = gets.split.map(&:to_i)
units = gets.split.map(&:to_i).sort.reverse

puts units[0..k-1].inject(:+)

