A, B, C = gets.strip.split.map(&:to_i)
x = C - (A - B)
puts x > 0 ? x : 0
