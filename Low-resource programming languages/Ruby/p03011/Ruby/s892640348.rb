p, q, r = gets.chomp.split.map(&:to_i)

puts [p, q, r].sort[0, 2].inject(:+)
