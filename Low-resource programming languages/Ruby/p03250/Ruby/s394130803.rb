A, B, C = gets.split(' ').map(&:to_i)

puts [A * 10 + B + C, B * 10 + A + C, C * 10 + A + B].max