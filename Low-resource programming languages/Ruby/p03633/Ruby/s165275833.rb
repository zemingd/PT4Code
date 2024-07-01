n=gets.to_i
ans=1
n.times do 
    x=gets.to_i
    ans=ans / ans.gcd(x) * x
end
p ans