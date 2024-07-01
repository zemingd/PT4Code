a, b = gets.split.map(&:to_i)
res = 0
res += [a, b].max
if a > b
  a -= 1
else
  b -= 1
end
res += [a, b].max
puts res