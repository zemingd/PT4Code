c11, c12, c13 = gets.chomp.split("")
c21, c22, c23 = gets.chomp.split("")
if c11 == c23 && c12 == c22 && c13 == c21
  puts "YES"
else
  puts "NO"
end
