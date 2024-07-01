io = STDIN

a=io.gets.chomp
b=io.gets.chomp
aa=a.clone
bb=b.clone
b[2],b[1],b[0],a[2],a[1],a[0]=a[0],a[1],a[2],b[0],b[1],b[2]
if a == aa &&
   b == bb
  puts 'YES'
else
  puts 'No'
end
