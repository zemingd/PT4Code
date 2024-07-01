N,*H = $<.read.split.map &:to_i
A = Array.new(N,0)
H.fill H[0],N,2

A.map!.with_index {|_,i|
  h = H[i]
  (1..2).map {|j| A[i-j]+(h-H[i-j]).abs }.min
}
p A[-1]