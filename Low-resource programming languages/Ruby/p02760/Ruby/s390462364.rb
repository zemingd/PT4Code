h=[]
3.times do 
 a=gets.chomp.split.map(&:to_i)
  h.push(a)
end
h=h.flatten
c=gets.chomp.to_i
c.times do 
  d=gets.chomp.to_i
  if h.include?(d)
     t=h.index(d)
     h[t]=0
  end
end
f=0
1.times do 
 if h[0]==0&&h[1]==0&&h[2]==0
  puts "Yes"
   f+=1
   break
 end
 if h[3]==0&&h[4]==0&&h[5]==0
  puts "Yes"
   f+=1
   break
 end
 if h[6]==0&&h[7]==0&&h[8]==0
   f+=1
  puts "Yes"
   break
  end
  if h[0]==0&&h[3]==0&&h[6]==0
    puts "Yes"
    f+=1
   break
  end
   if h[1]==0&&h[4]==0&&h[7]==0
    puts "Yes"
     f+=1
   break
   end
   if h[2]==0&&h[5]==0&&h[8]==0
    puts "Yes"
     f+=1
   break
   end
   if h[0]==0&&h[4]==0&&h[8]==0
    puts "Yes"
     f+=1
   break
   end
   if h[2]==0&&h[4]==0&&h[6]==0
    puts "Yes"
     f+=1
   break
   end
end
if f==0
  puts "No"
end
