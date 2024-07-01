n=gets.to_i
t=Array.new(n)
n.times{|i| t[i]=gets.to_i}

def gcd(a, b)
  a, b=b, a if a<b
  if a%b==0
    return b
  else
    return gcd(b, a%b)
  end
end

if n==1
  puts t[0]
  exit 0
end

g=gcd(t[0], t[1])
l=t[0]*t[1]/g
(2...n).each do |i|
  g=gcd(l, t[i])
  l=l*t[i]/g
end

puts l
