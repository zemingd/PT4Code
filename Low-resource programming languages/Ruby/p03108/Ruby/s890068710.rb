DBG = !true


def ufinit(n)
  $ufsz = Array.new(n,1)
  $ufances = Array.new(n)
  for i in 0...n
    $ufances[i] = i
  end
end

def ufroot(x)
  a = []
  y = x
  while $ufances[y] != y
    a << y
    y = $ufances[y]
  end
  for z in a
    $ufances[z] = y
  end
  return y
end

def ufconn(x,y)
  i = ufroot(x)
  j = ufroot(y)
  return if i==j
  #k  = [i,j].min
  k  = ($ufsz[i]<$ufsz[j]) ? j : i
  if k==j
    $ufances[i] = j
  else
    $ufances[j] = i
  end
  $ufsz[k] = $ufsz[i] + $ufsz[j]
end

n,m = gets.split.map{|z| z.to_i}
a = []
b = []
for i in 0...m
  aa,bb = gets.split.map{|z| z.to_i}
  a << aa-1
  b << bb-1
end


ufinit(n)
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
  i = ufroot(x)
  j = ufroot(y)
  if i==j
    ans[z-1] = sum
    next
  end
  p = $ufsz[i]
  q = $ufsz[j]
  sum -= ((p+q)*(p+q-1)-p*(p-1)-q*(q-1))/2 if sum > 0
  ufconn(x,y)
  ans[z-1] = sum
}
for i in 0...m
  puts "#{ans[i]}"
end
#puts ""

