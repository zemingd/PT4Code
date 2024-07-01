A, B, C = gets.split.map(&:to_i)
K = gets.to_i

x = [A, B, C].max
y = x * 2**K
puts [A, B, C].inject(:+) - x + y