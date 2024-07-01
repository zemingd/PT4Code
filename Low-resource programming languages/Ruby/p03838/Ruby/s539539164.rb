x, y = gets.chomp.split(" ").map(&:to_i)
if (x >= 0 && y >= 0) || (x < 0 && y < 0)then
  if x <= y then
    puts y - x
  else
    puts (y - x).abs + 2
  end
elsif x < 0 && y >= 0 then
  puts [y - x, (x.abs - y).abs + 1].min
else
  puts (x - y.abs).abs + 1
end
