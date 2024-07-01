a, b = gets.split.map(&:to_i)
result = a.to_s * b
tmp = b.to_s * a
result = tmp if result > tmp
puts result