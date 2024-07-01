n, k = gets.split.map(&:to_i)
l = gets.split.map(&:to_i)

puts l.sort.reverse[0,k].inject(:+)
