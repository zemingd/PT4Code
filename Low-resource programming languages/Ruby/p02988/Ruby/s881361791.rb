def juge_2(a,b,c)
  (b!= [a,b,c].max && b!=[a,b,c].min) ? true : false
end
 
n=gets.chomp.to_i
a=gets.chomp.split.map(&:to_i)
 
cnt=0
for i in 0..a.length-3
  if juge_2(a[i],a[i+1],a[i+2])
    cnt+=1
  end
end
 
puts cnt
 