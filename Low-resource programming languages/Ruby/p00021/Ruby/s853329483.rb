n = gets.chop.to_i

n.times do
  xys = gets.chop.split(/\s+/).map { |s| s.to_f }

  dxa = xys[2] - xys[0]
  dya = xys[3] - xys[1]
  dxb = xys[6] - xys[4]
  dyb = xys[7] - xys[5]

  print (dxa * dyb == dya * dxb) ? "YES\n" : "NO\n"
end