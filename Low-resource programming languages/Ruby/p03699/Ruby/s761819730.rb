n=gets.to_i
v=0
result=0
flag=0
n.times.each do
    m=gets.chomp.to_i
    
   
   if m%10!=0 && flag==0
        v=m
        flag=1
        
    end
    result+=m
  
end

if result==0
    p 0
elsif result%10==0 && v!=0
    result=result-v
    p result
    
elsif result%10==0 && v==0
    p 0
else
   p result
end
    