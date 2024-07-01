N,x = gets.to_i,gets.to_i(2)
M = {0=>1}
c = x.to_s(2).scan(?1).count
X = (N-1).downto(0).map {|n|
  d = x[n]>0 ? c-1 : c+1
  d > 1 ? (x^(1<<n)) % d : (M[-n]=d; -n)
}  
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