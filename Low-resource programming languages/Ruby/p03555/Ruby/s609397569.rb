io = STDIN

a=io.gets.chomp
b=io.gets.chomp
if a.reverse == b &&
   b.reverse == a
  puts 'YES'
else
  puts 'No'
end
