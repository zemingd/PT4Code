io = STDIN

a=io.gets.chomp
b=io.gets.chomp
aa=a.clone
bb=b.clone
if a == b.reverse &&
   b == a.reverse
  puts 'YES'
else
  puts 'NO'
end
