gets.to_i.times do
  x1, y1, x2, y2, x3, y3, x4, y4 = gets.split.map(&:to_f)
  if (y1 - y2) / (x1 - x2) == (y3 - y4) / (x3 - x4) 
    puts "YES"
  else
    puts "NO"
  end
end