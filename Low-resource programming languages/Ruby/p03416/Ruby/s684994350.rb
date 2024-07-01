a,b=gets.split
a=a.to_i
b=b.to_i

i=a
ans=0
(b-a+1).times{
    k=i.to_s
    s=k.split("")
    t=s.reverse
    
    if s==t
        ans+=1
    end
    
    
  i+=1  
}

puts ans