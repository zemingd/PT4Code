gets.to_i.times do
  x1, y1, x2, y2, x3, y3, x4, y4 = gets.split(" ").map(&:to_f)
  if x1 == x2 and x3 == x4
    puts "YES"
    next
  end
  if ((y4 - y3)*(x2 - x1)).rount(5) == ((y2 - y1)*(x4 - x3)).rount(5)
    puts "YES"
  else
    puts "NO"
  end
end