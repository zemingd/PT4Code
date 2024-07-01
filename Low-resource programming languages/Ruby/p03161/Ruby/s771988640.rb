N,K,*H = $<.read.split.map &:to_i
A = Array.new(N+K,0)
H.fill H[0],N,K

A.map!.with_index {|_,i|
  h = H[i]
  m = 1<<60
  1.upto(K) { |j|
    c = A[i-j] + d=(h-H[i-j]).abs
    m = c  if m > c
    break  if d == 0
  }
  m
}
p A[N-1]