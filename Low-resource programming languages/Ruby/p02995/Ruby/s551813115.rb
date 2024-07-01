a, b, c, d = gets.split.map(&:to_i)
x = c * d
if c < d
  c,d = d,c
end
r = c % d
while r != 0
  c = d
  d = r
  r = c % d
end

lcm = x/d

puts b-a % lcm