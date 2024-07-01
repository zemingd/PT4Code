A, B, C = gets.strip.split.map(&:to_i)

can_add = A - B

puts can_add < C ? C - can_add : 0