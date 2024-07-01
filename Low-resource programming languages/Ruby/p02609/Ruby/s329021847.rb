N,x = gets.to_i,gets
c,x = x.scan(?1).count, x.to_i(2)
R = [1,-1].map { m = c+_1; x%m if m>1 }
M = {0=>1}
X = (N-1).downto(0).map {|n|
  b = x[n]
  r,m = R[b],c+1-b-b
  if m < 2
    m - 2
  elsif b > 0
    (0 > r-=2.pow(n,m)) ? r+m : r
  else
    (c < r+=2.pow(n,m)) ? r-m : r
  end
}
I = [*0...N].sort_by! {X[_1]}
S = []
I.each {|i|
  next  if 1 > x=X[i]
  until c=M[x]
    S << x
    b,c = x+x,0
    c+=b[0] while 0 < (b>>=1)
    x %= c
  end
  M[x] = c+=1  while x=S.pop
}
X.each {|x| p x<0 ? x+2 : M[x]}