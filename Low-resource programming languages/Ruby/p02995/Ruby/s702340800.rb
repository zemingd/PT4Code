a, b, c, d = gets.split.map(&:to_i)
ans = 0
if c == 1 || d == 1
elsif c == d
  ans = b - (a - 1)
  ans -= b / c - (a - 1) / c
else
  ans = b - (a - 1)
  ans -= b / c - (a - 1) / c
  ans -= b / d - (a - 1) / d
  ans += b / c.lcm(d) - (a - 1) / c.lcm(d)
end
puts ans