A, B, C = gets.strip.split.map(&:to_i)
r = A - B
puts r > C ? 0 : C - r
