a,b,c = gets.chomp.split(' ')
if ((a[a.size - 1] == b[0]) and (b[b.size - 1] == c[0])) then
  puts "YES"
else
  puts "NO"
end