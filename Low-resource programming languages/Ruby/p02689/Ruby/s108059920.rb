F =-> {gets.split.map &:to_i}
N,M = F[]
*H = F[]
R = H.dup
M.times {
  a,b = F[]
  R[a] = nil  if H[a-=1] <= H[b-=1]
  R[b] = nil  if H[a] >= H[b]
}
p R.count{|r| r}