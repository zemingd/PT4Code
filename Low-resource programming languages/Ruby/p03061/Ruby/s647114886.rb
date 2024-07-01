def gcd_on_blackboard n, a
  a.unshift 0

  l = []
  l[1] = a[1]
  2.upto(n) do |i|
    l[i] = gcd(l[i-1], a[i])
  end

  r = []
  r[n] = a[n]
  (n-1).downto(1) do |i|
  r[i] = gcd(r[i+1], a[i])
  end

  m = []
  m[1] = r[2]
  m[n] = l[n-1]
  2.upto(n-1) do |i|
    m[i] = gcd(l[i-1], r[i+1])
  end
  m[1..n].max
end

def gcd a, b
  a, b = b, a if a < b
  r = a % b
  if r == 0
    b
  else
    gcd b, r
  end
end

n = gets.to_i
a = gets.split(' ').map{|x| x.to_i}
puts gcd_on_blackboard n, a
