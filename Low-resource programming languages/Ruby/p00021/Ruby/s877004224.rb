STDIN.gets.chomp.to_i.times do
  x1, y1, x2, y2, x3, y3, x4, y4 = STDIN.gets.chomp.split.map(&:to_i)
  ab = (y2 - y1) / (x2 - x1)
  cd = (y4 - y3) / (x4 - x3)
  puts(ab == cd ? 'YES' : 'NO')
end