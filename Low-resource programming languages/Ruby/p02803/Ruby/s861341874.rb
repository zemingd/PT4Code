h,w,*S = $<.read.split
H,W = h.to_i, w.to_i
S.each {|s| s << "#"}
S << "#"*W
A = (T=H*W).times.map {|i| Array.new(T-i)}
T.times {|i|
  h,w = i.divmod W
  a,s = A[i],S[h]
  next if s[w]==?#
  a[0] = 0
  a[1] = 1  if s[w+1]==?.
  a[W] = 1  if S[h+1][w]==?.
}
T.times {|k;h,w|
  h,w = k.divmod W
  next  if S[h][w] == ?#
  T.times {|i;h,w|
    h,w = i.divmod W
    next  if S[h][w] == ?# || i==k
    x = A[[i,k].min][(i-k).abs] or next
    (i+1...T).each {|j;h,w|
      h,w = j.divmod W
      next  if S[h][w] == ?# || j==k
      next  if x >= y =  A[i][j-i]||98
      next  if y <= z = (A[[k,j].min][(k-j).abs]||98) + x
      A[i][j-i] = z
    }
  }
}
p A.flatten.max_by {|x|x||0}