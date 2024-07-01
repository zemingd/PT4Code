n,k = gets.split.map(&:to_i)
l_arr = gets.split.map(&:to_i)

puts l_arr.sort.reverse[0..k-1].inject(&:+)