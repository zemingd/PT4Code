n = gets.chop.to_i
delta = 1.0e-7

n.times do
  xys = gets.chop.split(/\s+/).map { |s| s.to_f }

  dxa = xys[2] - xys[0]
  dya = xys[3] - xys[1]
  dxb = xys[6] - xys[4]
  dyb = xys[7] - xys[5]

  print (dxb * dya - dyb * dxa).abs <= delta ? "YES\n" : "NO\n"
end