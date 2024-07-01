n = gets.chomp.to_i
alist = gets.chomp.split.collect{ |item| item.to_i}

llist = []
rlist = []
def gcd(a,b)
  return a if b == 0
  gcd(b, a) if b > a
  return b if (r = a % b).zero?
  gcd(b, r)
end
llist[0] = 0
rlist[n+1] = 0
n.times do |nn|
  llist[nn+1] = gcd(llist[nn],alist[nn])
  rlist[n-nn] = gcd(rlist[n-nn+1],alist[n-nn-1])
end
mlist = []
n.times do |nn|
  mlist[nn] = gcd(llist[nn],rlist[nn+2])
end
puts mlist.max