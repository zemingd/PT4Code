a, b = gets.split.map(&:to_i)
if a < b
  a = a.to_s
  ans = a * b
else
  b = b.to_s
  ans = b * a
end
puts ans
