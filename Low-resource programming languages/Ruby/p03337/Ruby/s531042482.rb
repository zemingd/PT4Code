A, B = gets.split.map(&:to_i)

max = A + B
max = A - B if A - B > max
max = A * B if A * B > max

puts max
