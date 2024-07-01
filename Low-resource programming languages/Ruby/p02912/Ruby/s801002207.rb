
n,m = gets.chomp.split.collect{ |item| item.to_i}
alist = gets.chomp.split.collect{ |item| item.to_i}

alist.sort!
blist = []
n.times do |ni|
  blist[ni] = 0
end
x = n-1
base = alist[base]

y = 1
until y <= m
  if alist[x] >= base
    blist[x] += 1
    x = x-1
  else
    base = base/2
    blist[n-1] += 1
    x = n-2
  end
  y += 1
end
ans = 0
n.times do |ni|
  ans += alist[ni] / 2**blist[ni]
end
puts ans