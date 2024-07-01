N,c = gets.to_i,gets
c,x = c.scan(?1).count, c.to_i(2)
M = {0=>1}
X = (N-1).downto(0).map {|n|
  d = x[n]>0 ? c-1 : c+1
  d > 1 ? (x^(1<<n)) % d : d-2
}  
I = [*0...N].sort_by! {X[_1]}
X.each {|x| p x<0 ? x+2 : M[x]}