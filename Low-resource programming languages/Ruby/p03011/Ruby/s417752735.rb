P, Q, R = gets.chomp.split.map(&:to_i)

p [P + Q, Q + R, R + P].min
