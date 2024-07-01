def solve
  a, b, c, d = gets.split.map(&:to_i)
  x = b - b/c - b/d + b/c.lcm(d)
  y = a - a/c - a/d + a/c.lcm(d)
  print x - y
end
solve