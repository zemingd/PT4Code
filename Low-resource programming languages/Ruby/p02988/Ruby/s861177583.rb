def juge_2(a,b,c)
  if (a > b && b >c) || (a<b && b<c)
    true
  else 
    false
  end
end

n=gets.chomp.to_i
a=[]
a=gets.chomp.split("")
i=0
for i in 0..a.length-3
  if juge(a[i],a[i+1],a[i+2])
    cnt+=1
  end
end

puts cnt

