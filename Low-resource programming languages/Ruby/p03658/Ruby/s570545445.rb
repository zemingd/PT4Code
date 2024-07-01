_n, k = gets.split.map(&:to_i)
ls = gets.split.map(&:to_i)
puts ls.sort.reverse[0...k].inject(:+)
