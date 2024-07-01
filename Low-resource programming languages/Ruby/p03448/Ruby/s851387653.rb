a=gets.to_i;b=gets.to_i;c=gets.to_i;x=gets.to_i
x/=50
sum=0
for k in 0..[x/10 ,a].min
for i in 0..[(x-10*k)/2,b].min
sum+=1 if x-10*k-2*i<=c
end
end
p sum