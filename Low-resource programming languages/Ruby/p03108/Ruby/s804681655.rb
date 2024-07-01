DBG = !true
n,m = gets.split.map{|z| z.to_i}
a = []
b = []
for i in 0...m
  aa,bb = gets.split.map{|z| z.to_i}
  a << aa-1
  b << bb-1
end

def boss(i)
  j = i
  a = []
  while $dboss[j] != -1
    a << j
    j = $dboss[j]
  end
  for x in a
    $dboss[x] = j
  end
  return j
end

def setboss(k,i)
  j = i
  while j != k
    nxt = $dboss[j]
    $dboss[j] = k
    j = nxt
  end
end

$dboss = Array.new(n,-1)
sz = Array.new(n,1)
sum = n*(n-1)/2
ans = Array.new(n)
ans[m-1] = sum
if DBG
  print a
  puts " - a"
  print b
  puts " - b"
  print $dboss
  puts " - dboss"
end
(m-1).downto(1) { |z|
  x = a[z]
  y = b[z]  # x<y
  i = boss(x)
  j = boss(y)
  if i==j
    ans[z-1] = sum
    next
  end
  p = sz[i]
  q = sz[j]
  sum -= ((p+q)*(p+q-1)-p*(p-1)-q*(q-1))/2 if sum > 0
  k = [i,j].min
  $dboss[i] = k if k==j
  $dboss[j] = k if k==i
  setboss(k,x)
  setboss(k,y)
  sz[k] = p+q
  ans[z-1] = sum
}
for i in 0...m
  puts "#{ans[i]}"
end
#puts ""
