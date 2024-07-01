P, Q, R = gets.split.map(&:to_i)

puts [P, Q, R].inject(:+) - [P, Q, R].max