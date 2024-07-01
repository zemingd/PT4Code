A, B, C = gets.split.map(&:to_i)
K = gets.to_i

list = [A, B, C].sort

puts list[0] + list[1] + list[2] * 2 ** K
