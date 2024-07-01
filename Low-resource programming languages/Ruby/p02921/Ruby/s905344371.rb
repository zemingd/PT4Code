cnt=0
a,b=2.times.map{gets.chomp}
for i in 0..2
   cnt+=1 if a[i]==b[i]
end
puts cnt