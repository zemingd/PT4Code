N,x = gets.to_i,gets.to_i(2)
c = x.to_s(2).scan(?1).count
M = {0=>1}
X = (N-1).downto(0).map { (x^(1<<_1)) % (x[_1]>0 ? c-1 : c+1) }
I = [*0...N].sort_by! {X[_1]}
I.each {|i|
  n,s = X[i],[]
  until c=M[n]
    s << n
    n %= n.to_s(2).scan(?1).count
  end
  s.reverse_each {|n| M[n] = c+=1}
}
X.each {p M[_1]}