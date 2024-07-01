a,b=gets.split.map &:to_i
x=b/100-a/100-1
if a/1000%10*10+a/10000>=a%100 then x+=1 end
if b/1000%10*10+b/10000<=b%100 then x+=1 end
p x