x,y = gets.chomp.split(" ").map(&:to_i)
if x >= 0 && y >= 0
  if x < y
    puts y-x
  else
    puts x-y+2 if y != 0
    puts x-y+1 if y == 0
  end
elsif x >= 0 && y < 0
  if x < -y
    puts -y-x+1
  else
    puts x+y+1
  end
elsif x < 0 && y > 0
  if -x < y
    puts y+x+1
  else
    puts -x-y+1
  end
elsif x < 0 && y <= 0
  if x < y
    puts -x+y
  else
    puts -y+x+2 if y != 0
    puts -y+x+1 if y == 0
  end
end