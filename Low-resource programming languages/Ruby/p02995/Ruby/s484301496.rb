a, b, c, d = gets.strip.split.map(&:to_i)

def count(x, y, d)
  i = (x - 1) / d
  j = y / d
  
  (j - i)
end

ans = (b - a + 1) - count(a, b, c) - count(a, b, d) + count(a, b, c.lcm(d))
puts(ans)