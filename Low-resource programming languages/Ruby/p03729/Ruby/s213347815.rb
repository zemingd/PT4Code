a, b, c = gets.chomp.split
if a[-1] == b[0] and b[-1] == c[0] then
  puts "YES"
else
  puts "NO"
end