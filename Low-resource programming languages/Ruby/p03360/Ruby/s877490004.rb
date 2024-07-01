A, B, C = gets.split.map(&:to_i)
K = gets.to_i

x = [A, B, C].max
puts A + B + C - x + x * 2**K
