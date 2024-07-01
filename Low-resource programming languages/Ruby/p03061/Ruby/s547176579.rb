n = $stdin.gets.to_i
a = $stdin.gets.split.map(&:to_i)

ary = []
r_ary = []
result = []

def gcd(x,y)
  if x % y == 0
    return y
  end
  return gcd(y,x%y)
end
ary[0] = a[0]
(1..n-1).each do |i|
  ary[i] = gcd(ary[i-1],a[i])
end

r_ary[n-1] = a[n-1]
(0..n-2).reverse_each do |i|
  r_ary[i] = gcd(a[i],r_ary[i+1])
end
result[0]=r_ary[1]
result[n-1]=ary[n-2]

(1..n-2).each do |i|
  result[i] = gcd(ary[i-1],r_ary[i+1])
end
    
puts result.max
