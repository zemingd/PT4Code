L = $<.map{_1.split.map &:to_i}
N,A,Q = L.shift[0],L.shift,L.shift[0]
T = [0]*(10**5+1)
s = A.inject(0) {|s,i| T[i]+=1; s+i}
L[0,Q].each {|b,c|
  p s += (c-b)*T[b]
  T[c] += T[b]
  T[b] = 0
}