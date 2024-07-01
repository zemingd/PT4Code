x, y = gets.chomp.split(" ").map(&:to_i)
if x >= 0 && y >= 0 then
  if x < y then
    puts y - x
  elsif y == 0
    puts x - y + 1
  else
    puts x - y + 2
  end
elsif x < 0 && y < 0 then
  if x < y then
    puts y - x
  else
    puts x - y + 2
  end
else
  if x < 0 then
    puts [y - x, y - x.abs + 1].min
  else
    puts x - y.abs + 1
  end
end

