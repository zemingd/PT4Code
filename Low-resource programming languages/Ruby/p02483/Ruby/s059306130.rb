n=gets.split(" ").map{|i|i.to_i}

 i=0
 while i<n.length
  j=i+1
  while j<n.length
   if n[i]>n[j]
      n[i],n[j]=n[j],n[i]
   end
   j=j+1
  end
  i=i+1
 end
 
 puts n[0]
 for i in 1...n.length
     puts " " + n[i].to_s
 end
 puts