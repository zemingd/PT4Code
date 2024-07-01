P, Q, R = gets.split.map(&:to_i)
A = P + Q
B = Q + R
C = R + P
puts [A, B, C].min