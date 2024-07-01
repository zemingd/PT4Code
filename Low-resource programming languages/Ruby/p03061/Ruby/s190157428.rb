n = gets.to_i
an = gets.split(' ').map{|a|a.to_i}

l = Array.new(n+2, 0)
r = Array.new(n+2, 0)

1.upto(n) do | i |
  l[i]= (l[i-1]).gcd(an[i-1])
end
n.downto(1) do | i |
  r[i]= (r[i+1]).gcd(an[i-1])
end

max = 0
(1..n).each do | i |
  a = (l[i-1]).gcd(r[i+1])
  max = a if a > max
end
p max