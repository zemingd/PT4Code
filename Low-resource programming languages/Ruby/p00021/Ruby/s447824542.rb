n = gets.to_i
n.times do
  line = gets
  x1, y1, x2, y2, x3, y3, x4, y4 = line.split.map(&:to_f)
  
  if x1 == x2 then
    if x3 == x4 then
      puts "YES"
    else
      puts "NO"
    end
  elsif y1 == y2 then
    if y3 == y4 then
      puts "YES"
    else
      puts "NO"
    end
  elsif x3 != x4 && y3 != y4
    if (x1 - x2) * (x3 - x4) == (y1 - y2) * (y3 - y4) then
      puts "YES"
    else
      puts "NO"
    end
  else
    puts "NO"
  end
end