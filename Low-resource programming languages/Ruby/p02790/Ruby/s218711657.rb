a, b = gets.split.map(&:to_i)

ans = a > b ? b.to_s * a : a.to_s * b

puts ans
