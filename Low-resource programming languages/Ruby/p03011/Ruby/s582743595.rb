P, Q, R = gets.chomp.split(" ").map(&:to_i)

puts [P, Q, R].sort[0..1].inject(:+)
