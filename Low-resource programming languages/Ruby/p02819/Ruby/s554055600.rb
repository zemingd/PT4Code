a=gets.chomp.to_i
b=0
c=[]
d=1
while b==0
  if a%2!=0
     (1..a).each do |x|
       if a%x==0
         c.push(x)
       end
     end
    if c.length==2
      b+=1
    else a+=1
    end
  elsif a==2
    b+=1
  else a+=1
  end 
  c=[]
end
puts a