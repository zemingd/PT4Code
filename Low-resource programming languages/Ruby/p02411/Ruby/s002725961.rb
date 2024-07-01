while true
  m,f,r = gets.chomp.split(" ").map &:to_i

  break    if m == -1 and f == -1 and r == -1
  puts "A" if 80 <= m+f and 1 < m*f
  puts "B" if 65 <= m+f and m+f < 80 and 1 < m*f
  puts "C" if 50 <= m+f and m+f < 65 and 1 < m*f
  puts "C" if 30 <= m+f and m+f < 50 and 50 <= r and 1 < m*f
  puts "D" if 30 <= m+f and m+f < 50 and r < 50  and 1 < m*f
  puts "F" if m+f < 30 or m == -1 or f == -1

end
  