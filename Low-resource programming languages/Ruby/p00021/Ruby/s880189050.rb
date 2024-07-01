nItems = gets.to_i
nItems.times do
  x1, y1, x2, y2, x3, y3, x4, y4 = gets.split.map(&:to_i)
  if (x2-x1) == 0 || (x4-x3) == 0 || (y2-y1) == 0 || (y4-y3) == 0
    if ((x2-x1) == 0 && (x4-x3) == 0) || ((y2-y1) == 0 && (y4-y3) == 0)
      puts "YES"
    else
      puts "NO"
    end
  else
    a = (x2-x1) / (y2-y1)
    b = (x4-x3) / (y4-y3)
    if a == b
      puts "YES"
    else
      puts "NO"
    end
  end
end