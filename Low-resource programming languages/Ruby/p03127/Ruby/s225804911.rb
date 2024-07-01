n=gets.to_i
a=gets.split.map(&:to_i)

def gcd(a,b)
  if b==0 
    return a
  end
  return gcd(b, a%b)
end

g=a[0]
for i in 1...n do
  g=gcd(g,a[i])
end
p g