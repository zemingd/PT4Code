def slope(x1, y1, x2, y2)
  return (y2 - y1).round(6)/(x2 - x1).round(6)
end

result = []

gets.to_i.times{
  xa, ya, xb, yb, xc, yc, xd, yd = gets.split.map(&:to_f)
  ab = slope(xa, ya, xb, yb)
  cd = slope(xc, yc, xd, yd)
  result << ((ab == cd) ? "YES" : "NO")
}

result.each{|r|
  puts r
}