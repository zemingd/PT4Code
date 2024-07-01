P, Q, R = gets.chop.split.map(&:to_i)

puts P + Q + R - [P, Q, R].max
