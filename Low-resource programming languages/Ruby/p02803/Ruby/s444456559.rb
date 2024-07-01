h,w,*S = $<.read.split
H,W = h.to_i, w.to_i
S.each {|s| s << "#"}
S << "#"*W
A = (T=H*W).times.map {|i| Array.new(T-i)}
h,w = 0,-1
T.times {|i|
  h+=1 and w=0  if W == w+=1
  a,s = A[i],S[h]
  next if s[w]==?#
  a[0] = 0
  a[1] = 1  if s[w+1]==?.
  a[W] = 1  if S[h+1][w]==?.
}
kh,kw = 0,-1
T.times {|k|
  kw=0 and kh+=1  if W == kw+=1
  next  unless (ak=A[k])[0]
  ih,iw = 0,-1
  T.times {|i|
    iw=0 and ih+=1  if W == iw+=1
    next  unless (ai=A[i])[0] and i!=k
    x = i<k ? ai[k-i] : ak[i-k]  or next
    jh,jw = ih,iw
    (i+1...T).each {|j|
      jw=0 and jh+=1  if W == jw+=1
      next  unless (aj=A[j])[0] and j!=k
      y = x + (j<k ? aj[k-j] : ak[j-k]  or next)
      ai[j] = y  unless ai[j-=i]&.<= y 
    }
  }
}
p A.flatten.max_by {|x|x||0}