c = 2.times.map{gets.chomp}
if c[0][0] == c[1][2] && c[0][1] == c[1][1] && c[0][2] == c[1][0]
  puts "YES"
else
  puts "NO"
end