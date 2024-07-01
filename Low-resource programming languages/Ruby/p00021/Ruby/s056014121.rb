num = gets.to_i
num.times do
  line = gets
  x1, y1, x2, y2, x3, y3, x4, y4 = line.chomp.split(" ").map(&:to_f)
  if (x2 == x1) || (x4 == x3)
    if x2 == x1 && x4 == x3
      puts "YES"
    else
      puts "NO"
    end
  elsif y2 == y1 || y4 == y3
    if y2 == y1 && y4 == y3
      puts "YES"
    else
      puts "NO"
    end
  else
    puts (y2 - y1) / (x2 - x1)  == (y4 - y3) / (x4 - x3) ? "YES" : "NO"
  end
end