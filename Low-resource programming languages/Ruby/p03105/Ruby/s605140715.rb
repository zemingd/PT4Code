a, b, c = gets.split.map(&:to_i)
res1 = b/a
if res1 > c
  res1 = c
end
puts res1