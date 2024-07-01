def enq(a,x)
  f =->(x){x.is_a?(Array) ? x[0] : x}
  a = [a]  if a[i=-1]
  while a[i].is_a? Array
    return a.unshift x  if x <= (a=a[i])[0]
    return a << x  if x >= a[-1]
    i = a.bsearch_index {|y| x <= f[y]}
    i -= 1  if x < f[a[i]]
  end
  return a.insert(i+1, x)  if a.size-i <9
  i > 9 ? a[i] = [a[i],x] : a.unshift(*a.shift(i+1),x)
end
def deq(a)
  return a.shift  if !a[1]
  l,a = a,n  while (n=a[0]).is_a? Array
  if (r=a[1]).is_a? Array; a[0] = deq r; a[1] = r[0] if !r[1]; n
  else (l||[])[0] = r if !a[2]; a.shift end
end
N,M,*A = $<.read.split.map{|x| -x.to_i}
A.sort!
(-M).times { break if A[0]==0; enq A, -(-(deq A)/2) }
p A.flatten.inject(0,:-)