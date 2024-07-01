include Math

def distance(x1, y1, x2, y2, x0, y0)
  a = (x2 - x1)*(y1 - y0) - (x1 - x0)*(y2 - y1)
  b2 = (x2 - x1)**2 + (y2 - y1)**2
  b = sqrt(b2)
  return a/b
end

gets.to_i.times{
  xa, ya, xb, yb, xc, yc, xd, yd = gets.split.map(&:to_f)
  cab = distance(xa, ya, xb, yb, xc, yc)
  dab = distance(xa, ya, xb, yb, xd, yd)
  puts ((cab == dab) && (cab * dab > 0)) ? "YES" : "NO"
}