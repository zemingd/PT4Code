n = gets.to_i
an = gets.split(' ').map{|a|a.to_i}

if an.size == 2
  p an.max
  exit
end

if an.size == 3
  p [(an[0]).gcd(an[1]), (an[0]).gcd(an[2]), (an[1]).gcd(an[2])].max
  exit
end

l = Array.new(n+2, 0)
r = Array.new(n+2, 0)

1.upto(n) do | i | 
  l[i]= (l[i-1]).gcd(an[i])
end
n.downto(1) do | i | 
  r[i]= (r[i+1]).gcd(an[i])
end

max = 0 
(1..n).each do | i | 
  a = (l[i-1]).gcd(r[i+1])
  max = a if a > max 
end
p max 