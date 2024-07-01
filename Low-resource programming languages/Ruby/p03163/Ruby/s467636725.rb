WV = $<.read.split.map(&:to_i).each_slice(2).to_a
N,W = WV.shift
WV.sort_by! {|w,v| [w,-v]}
I = {}
WV.each.with_index { |(w,*),i| break if w > W; I[w] ||= i}
I[0] = N
K = I.keys
A = Array.new W+1
A[0] = [0,0]
l = [-1]
A.each_with_index {|(c,b),n|
  (c||0) > l[0] ? l=A[n] : next
  K.each_cons(2) {|w,x|
    i,j = I[w],I[x]
    break  if W < w+=n
    m = 1 << j
    next  if WV[i][1]+c <= l[0] || m <= (b&(m-1))+(1<<i)
	i += 1  while b[i] > 0
    m = (A[w]||l)[0]
    v = WV[i][1] + c
    A[w] = [v,b+(1<<i)]  if m < v
  }
}
p l[0]