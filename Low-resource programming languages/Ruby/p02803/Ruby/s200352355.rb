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
kh,kw,ks = -1,W-1
T.times {|k|
  kw,ks = 0,S[kh+=1]  if W == kw+=1
  next  if ks[kw] == ?#
  ih,iw,is = -1,W-1
  T.times {|i|
    iw,is = 0,S[ih+=1]  if W == iw+=1
    next  if is[iw] == ?# || i==k
    x = i<k ? A[i][k-i] : A[k][i-k]  or next
    jh,jw,js = ih,iw,S[ih]
    (i+1...T).each {|j|
      jw,js = 0,S[jh+=1]  if W == jw+=1
      next  if js[jw] == ?# || j==k
      y = j<k ? A[j][k-j] : A[k][j-k]  or next
      A[i][j-i] = y  if (y+=x) < (A[i][j-i]||999)   
    }
  }
}
p "WA" #A.flatten.max_by {|x|x||0}