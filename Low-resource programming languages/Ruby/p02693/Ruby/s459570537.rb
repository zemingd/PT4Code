io = STDIN
k=io.gets.to_i
a,b=io.gets.split.map(&:to_i)
bb=b.to_f/k
aa=a.to_f/k
if (a..b).include?(aa*k) ||
   (a..b).include?(bb*k)
  puts 'OK'
else
  puts 'NG'
end
