a, b = gets.split.map(&:to_i)
if b < a
  ans = a - 1
else
  ans = a
end
puts ans