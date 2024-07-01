N,c = gets.to_i,gets
c,x = c.scan(?1).count, c.to_i(2)
M = {0=>1}
X = (N-1).downto(0).map {|n|
  d = x[n]>0 ? c-1 : c+1
  d > 1 ? (x^(1<<n)) % d : d-2
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