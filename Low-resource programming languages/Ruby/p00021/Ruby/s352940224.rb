gets.to_i.times do
  x1, y1, x2, y2, x3, y3, x4, y4 = gets.split.map(&:to_f)
  abx=x2-x1
  aby=y2-y1
  cdx=x4-x3
  cdy=y4-y3
  if abx*cdy-aby*cdx==0.0
    puts "YES"
  else
    puts "NO"
  end
end