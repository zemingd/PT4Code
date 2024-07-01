N=gets.chomp.to_i
a=N.times.map { gets.chomp.to_i }.sort
n=a.length
c=0

for i in 0..n
 if(a.count(a[i])%2!=0)
   c+=1
   a.delete(a[i])
   n=a.length
 end
end
puts c
