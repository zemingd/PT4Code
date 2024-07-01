n = gets.chop.to_i
delta = 0.0000001

n.times do
  x1, y1, x2, y2, x3, y3, x4, y4 = gets.chop.split(" ").map { |s| s.to_f }

  dxa = x2 - x1
  dya = y2 - y1
  dxb = x4 - x3
  dyb = y4 - y3

  d = (dya * dxb - dyb * dxa).abs

  if (d <= delta)
    puts "YES"
  else
    puts "NO"
  end
end