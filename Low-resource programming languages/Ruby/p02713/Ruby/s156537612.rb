def gcd(a,b)
  if a%b == 0
    a
  else
    gcd(b,a%b)
  end
end
k = gets.to_i
 
ans = 0
for i in 1..k
  for j in 1..k
    for k in 1..k
      ans += gcd(gcd(i,j),k)
    end
  end
end
puts ans 