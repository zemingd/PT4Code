x,y=gets.split.map(&:to_i)
if x >= 0 && y >= 0
  if x < y
    puts y - x
  else
    puts x + y + 1
  end
elsif x <= 0 && y >= 0
  if x.abs < y
    puts y + x + 1
  else
    puts x.abs - y + 1
  end
elsif x >= 0 && y <= 0
  if x > y.abs
    puts x + y + 1
  else
    puts y.abs - x + 1
  end
else
  if x < y
    puts y - x
  else
    puts y.abs - x.abs + 2
  end
end
