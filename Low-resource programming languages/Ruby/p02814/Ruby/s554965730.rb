def gcd(a,b)
  return a if b == 0
  gcd(b,a%b)
end

def lcm(a,b)
  a * b / gcd(a,b)
end

def f(n)
  ret=0
  while(n%2==0)
    n/=2
    ret+=1
  end
  ret
end

n,m=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)

ff=f(a[0])
a.each do |v|
  if ff != f(v)
    puts 0
    exit
  end
end 

l=1
a.each do |v|
  l=lcm(l,v/2)
end

puts ((m/l)+1)/2