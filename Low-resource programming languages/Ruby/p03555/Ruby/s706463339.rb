io = STDIN

a=io.gets.chomp
b=io.gets.chomp
if a[0] == b[2] &&
   a[1] == b[1] &&
   a[2] == b[0]
   b.reverse == a
  puts 'YES'
else
  puts 'No'
end
