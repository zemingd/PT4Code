c1 = gets.chomp
c2 = gets.chomp
if c1[0] == c2[2] && c1[1] == c2[2] && c1[2] == c2[0]
  puts "YES"
else
  puts "NO"
end
