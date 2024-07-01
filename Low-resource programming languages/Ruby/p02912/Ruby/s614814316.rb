def enq(a,x)
  b = a[i=-1]
  until b.frozen?
    return a << x  if x >= (a=b)[-1]
    return a.unshift x  if x <= a[0]
    b = a[i = a.bsearch_index{|y| x < (y.frozen? ? y: y[0])}-1]
  end  if b && b=a
  a[i+9] or return a.insert i+1, x
  i>0 ? a[i]=[b,x] : enq(a[i+=1].to_a,x)  rescue a[i]=[x,a[i]]
end
def deq(a) r=a.shift; a[0].frozen? or a.unshift *a.shift; r end
def poq(a) r=a.pop; a[-1].frozen? or a.push *a.pop; r end
N,M,*A = $<.read.split.map{|x| -x.to_i}
A.sort!
(-M).times { break if A[0]==0; enq A, -(-(deq A)/2)}
p A.flatten.inject(0,:-)