def gcd(a,b)
  if a > b
    c = a
    d = b
  else
    c = b
    d = a
  end
  e = 0
  while c % d != 0
    e = c % d
    c = d
    d = e
  end
  return d
end

N = gets.chomp.to_i
A = gets.split

a = []

for x in 0...N
  a[x] = A[x].to_i
end

if N == 2
  if a[0] > a[1]
    puts a[0]
  else
    puts a[1]
  end
  exit
end

max = gcd(a[0],a[1])
all = gcd(max,a[2])
if max < gcd(a[0],a[2])
  max = gcd(a[0],a[2])
end
if max < gcd(a[1],a[2])
  max = gcd(a[1],a[2])
end

x = 3
maxa = 0
maxb = 0
while x < N
  maxa = gcd(all,a[x])
  maxb = gcd(max,a[x])
  all = gcd(all,a[x-1])
  if maxa > maxb
    max = maxa
  else
    max = maxb
  end
  x += 1
end
if all > max
  max = all
end

puts max