b = gets.split.map(&:to_i)
b.sort!
if b[0] == 5 && b[1] ==5 && b[2] ==7
  puts "YES"
else
  puts "NO"
end