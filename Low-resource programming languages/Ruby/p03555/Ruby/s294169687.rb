io = STDIN

a=io.gets.chomp
b=io.gets.chomp
aa=a.clone
bb=b.clone
if a == a.reverse &&
   b == b.reverse
  puts 'YES'
else
  puts 'NO'
end
