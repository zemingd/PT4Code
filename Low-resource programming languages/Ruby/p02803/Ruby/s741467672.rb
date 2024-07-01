h,w,*S = $<.read.split
H,W = h.to_i, w.to_i
A = (T=H*W).times.map {|i| Array.new(T-i)}
S << ''
h,w = 0,-1
T.times {|i|
  h+=1 and w=0  if W == w+=1
  a = A[i]
  T.times {|j|
    k,l,s = W*j,-1,S[h+j]
    a[k+l] = -j-l  while s[w+l+=1] == ?.
    break  unless a[k]
  }
}
kh,kw = 0,-1
T.times {|k|
  kw=0 and kh+=1  if W == kw+=1
  next  unless (ak=A[k])[0]
  ih,iw = 0,-1
  T.times {|i|
    iw=0 and ih+=1  if W == iw+=1
    next  unless i!=k and (ai=A[i])[0]
    x = (i<k ? ai[k-i] : ak[i-k]  or next).abs
    jh,jw = ih,iw
    (i+1...T).each {|j|
      jw=0 and jh+=1  if W == jw+=1
      next  if x >= z=(ai[j-i]||999)
      next  unless j!=k and (aj=A[j])[0]
      y = (j<k ? aj[k-j] : ak[j-k]  or next).abs
      ai[j-i] = y  if z > y+=x
    }
  }
}
p A.flatten.map{|x|(x||0).abs}.max