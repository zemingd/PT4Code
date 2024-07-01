N,M=gets.split.map &:to_i
A=N.times.map{[]}
M.times.map{|i|
  a,b=gets.split.map &:to_i
  A[a-1]<<b
  [a,b]
}.sort{|a,b|a[1]<=>b[1]}.each{|a,b|puts "%06d%06d"%[A[a-1].index(b)+1,a]}
