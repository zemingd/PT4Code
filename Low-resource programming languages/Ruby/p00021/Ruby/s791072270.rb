result = []

gets.to_i.times{
  xa, ya, xb, yb, xc, yc, xd, yd = gets.split.map(&:to_f)
  ab = (yb - ya)/(xb - xa)
  cd = (yd - yc)/(xd - xc)
  result << ((ab == cd) ? "YES" : "NO")
}

result.each{|r|
  puts r
}