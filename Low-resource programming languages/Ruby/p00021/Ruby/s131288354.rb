gets.to_i.times do
  x1, y1, x2, y2, x3, y3, x4, y4 = gets.split.map(&:to_f)
  if x1 != x2 && x3 != x4 && y1 != y2 && y3 != y4 then
    puts (y2 - y1) * (x4 - x3) == (y4 - y3) * (x2 - x1) ? "YES" : "NO"
  else
    if x1 == x2 && x3 == x4 then
      puts "YES"
    elsif y1 == y2 && y3 == y4 then
      puts "YES"
    else
      puts "NO"
    end
  end
end