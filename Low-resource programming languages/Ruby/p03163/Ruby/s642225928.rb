WV = $<.read.split.map(&:to_i).each_slice(2).to_a
N,W = WV.shift
WV.sort_by! {|w,v| [w,-v]}
I = {}
WV.each.with_index { |(w,*),i| break if w > W; I[w] ||= i}
A = Array.new W+1
A[0] = [0,0]
1.upto(W) {|n|
  m = A[n-1]
  j=l = 0
  I.each {|w,i|
    break  if n < w
    next  if w < l
    j = i  if j < i
    a,b = A[n-w]
    j += 1  while b[j] > 0
    next  if w < l=WV[j][0]
    b += 1 << j
    a += WV[j][1]
    m = [a,b]  if a > m[0]
  }
  A[n] = m
}
p A[W][0]