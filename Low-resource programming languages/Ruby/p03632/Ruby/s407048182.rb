a, b, c, d = gets.split.map(&:to_i)
t = 0
u = 0
if c >=a
  t = c
else
  t = a
end
if d >=b
  u = d
else
  u = b
end
puts u - t