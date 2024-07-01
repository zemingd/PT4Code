a, b = gets.split.map(&:to_i)
ans = b
(a - 1).times { ans *= b - 1 }
puts ans
