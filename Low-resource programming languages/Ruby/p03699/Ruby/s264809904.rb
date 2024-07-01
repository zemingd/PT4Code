n=gets.chomp.to_i
v=0
result=0
n.times.each do
    m=gets.chomp.to_i
    s=m.to_s
   
   if s[-1]!="0" && v==0
        v=m
        
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