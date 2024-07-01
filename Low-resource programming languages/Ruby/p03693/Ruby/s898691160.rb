r,g,b=gets.chomp.split(" ")
s = r + g + b
if (s.to_i) % 4 == 0
  puts "YES"
else
  puts "NO"
end