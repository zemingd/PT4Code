def enq(a,x)
  b = a[i=-1]
  until b.frozen?
    return a << x  if x >= (a=b)[-1]
    return a.unshift x  if x <= a[0]
    i = a.bsearch_index {|y| x <= (y.frozen? ? y: y[0])}
    b = a[i-=1]  if (b=a[i]).frozen? ? x<b: x<b[0]
  end  if b && b=a
  return a.insert(i+1, x)  unless a[i+9]
  i > 0 ? a[i] = [b,x] : a[1].unshift(x)  rescue a[1] = [x,a[1]]
end
def deq(a) r=a.shift; a.unshift *a.shift if !a[0].frozen?; r end
def poq(a) r=a.pop; a.push *a.pop if !a[-1].frozen?; r end
N,M,*A = $<.read.split.map{|x| x.to_i}
A.sort!
M.times { break if A[-1]==0; enq A, (poq A)/2 }
p A.flatten.inject(0,:+)