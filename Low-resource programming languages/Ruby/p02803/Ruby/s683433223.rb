H,W = gets.to_s.split.map &:to_i
T = H*W
S = (0..H).map { gets||0 }
A = Array.new(T) { [T]*(T-_1) }
T.times {
  h,w = _1.divmod W
  a,s = A[_1],S[h]
  next  if s[w] != ?.
  a[0] = 0
  a[1] = 1  if s[w+1] == ?.
  a[W] = 1  if S[h+1][w] == ?.
}
T.times {|k|
  next  if (ka=A[k])[0] > 0
  kh,kw = k.divmod W
  T.times {|i|
    next  if i==k || (ia=A[i])[0] > 0
    ih,iw = i.divmod W
    x = i<k ? ia[k-i] : ka[i-k]
    jh,jw = ih,iw
    (i+1...T).each {|j|
      (jh+=1; jw=0)  if W == jw+=1
      next  if j==k || (ja=A[j])[0] > 0
      y = j<k ? ja[k-j] : ka[j-k]
      ia[j] = y  if ia[j-=i] > y+=x
    }
  }
}
p A.flatten.max_by{_1<T ? _1 : 0}