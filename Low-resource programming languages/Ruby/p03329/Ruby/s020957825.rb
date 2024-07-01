n=gets.to_i
t=0
while n>=9
 if n%9==0
   n/=9
 elsif n%6==0
   n/=6
 else
   k=n/9
   n=k+(n%9)
 end
 t+=1
end
if n==6
  ans=t+1
elsif n==7 || n==8
  ans=t+1+n/6
elsif n==1
  ans=t
else
  ans=t+n
end
puts ans
