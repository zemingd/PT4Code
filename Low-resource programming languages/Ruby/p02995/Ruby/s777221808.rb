def solve
  a, b, c, d = gets.split.map(&:to_i)
  v = a / c
  w = a / d
  x = b / c
  y = b / d
  total1 = x - v
  total2 = y - w
  total3 = total1 + total2 - (c.gcd(d))
  print b - a - total3
end
solve
