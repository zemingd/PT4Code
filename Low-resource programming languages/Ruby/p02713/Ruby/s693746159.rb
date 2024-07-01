k = gets.to_i
ans=0
for i in 1..k
  for j in 1..k
    for u in 1..k
       ans += i.gcd(j).gcd(u)
     end
   end
 end

 puts ans