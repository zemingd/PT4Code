a = gets.chomp.split

if a[0][-1] == a[1][0] && a[1][-1] == a[2][0]
  puts "YES"
else
  puts "NO"
end
