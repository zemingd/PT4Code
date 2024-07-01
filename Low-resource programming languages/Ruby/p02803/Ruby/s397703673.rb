Z = gets.to_s.split.map &.to_u32
H = Z[0]
W = Z[1]
T = H*W
S = Array.new(H+1) { gets||"" }
A = Array.new(T) {|i| [T] * (T-i) }
C = [0] * T
T.times {|i|
  h,w = i.divmod W
  a,s = A[i],S[h]
  next  if s[w] != '.'
  a[0] = 0
  a[1] = 1  if s[w+1]? == '.'
  a[W] = 1  if S[h+1][w]? == '.'
}
T.times {|k|
  ka = A[k]
  next  if ka[0]>0
  kh,kw = k.divmod W
  T.times {|i|
    ia = A[i]
    next  if i==k || ia[0]>0
    ih,iw = i.divmod W
    x = i<k ? ia[k-i] : ka[i-k]
    (i+1...T).each {|j|
      ja = A[j]
      next  if j==k || ja[0]>0
      jh,jw = j.divmod W
      y = j<k ? ja[k-j] : ka[j-k]
      z = ia[l=j-i]
      if z > (y+=x)
        C[z] -= 1  if z < T
        C[y] += 1
        ia[l] = y
      end
    }
  }
}
p (T-1).downto(0) {|i| break i if C[i]!=0 } || 1