while n=gets
 a,b=n.chomp.split
 a,b=a.to_i,b.to_i

 c=a+b
 i=0
  while c>0
   c=c/10
   i+=1
  end
 puts i
end