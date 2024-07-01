a, b = gets.split.map(&:to_i)
ans = a
ans -= 1 if b < a
puts ans
