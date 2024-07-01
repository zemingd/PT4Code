A, B = gets.split.map(&:to_i)

puts [A + A - 1, A + B, B + B - 1].max
