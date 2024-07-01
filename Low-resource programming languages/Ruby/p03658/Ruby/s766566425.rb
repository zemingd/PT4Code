n, k = gets.split.map(&:to_i)
l = gets.split.map(&:to_i)
puts l.sort_by{|i|-i}[0, k].inject(:+)
