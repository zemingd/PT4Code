def gcd(a,b)
  return a if b == 0
  gcd(b,a%b)
end

def lcm(a,b)
  a * b / gcd(a,b)
end

n,m=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)
l=1
a.each do |v|
  l=lcm(l,v/2)
end
puts ((m/l)+1)/2