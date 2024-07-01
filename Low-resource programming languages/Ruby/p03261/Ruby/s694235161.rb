n=gets.to_i
a=n.times.map{gets.chomp}
flag=(a.count-a.uniq.count)==0
for i in 0...(n-1)
  flag=a[i][-1]!=a[i+1][0] ? false : flag
end
puts flag ? "Yes" : "No"