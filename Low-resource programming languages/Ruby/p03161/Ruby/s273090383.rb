N,K,*H = $<.read.split.map &:to_i
A = Array.new(N,0)
H << H[0]

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
p A[-1]