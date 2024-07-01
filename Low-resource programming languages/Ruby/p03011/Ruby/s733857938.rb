P, Q, R = gets.chomp.split.map(&:to_i)

puts [P + Q, Q + R, R + P].min
