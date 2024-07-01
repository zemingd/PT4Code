n = gets.chop.to_i
delta = 1.0e-5

n.times do
  xys = gets.chop.split(" ").map { |s| s.to_f }

  dxa = xys[2] - xys[0]
  dya = xys[3] - xys[1]
  dxb = xys[6] - xys[4]
  dyb = xys[7] - xys[5]

  d = (dxb * dya - dyb * dxa).abs;

  if (dxa == 0 && dya == 0 || d <= delta)
    puts "YES"
  else
    puts "NO"
  end
end