while true
  m,f,r = gets.chomp.split(" ").map &:to_i

  break    if m == -1 and f == -1 and r == -1
  puts "A" if 80 <= m+f
  puts "B" if 65 <= m+f and m+f < 80
  puts "C" if 50 <= m+f and m+f < 65
  puts "C" if 30 <= m+f and m+f < 50 and r >= 50
  puts "D" if 30 <= m+f and m+f < 50 and r < 50
  puts "F" if m+f < 30 or m == -1 or f == -1

end
  