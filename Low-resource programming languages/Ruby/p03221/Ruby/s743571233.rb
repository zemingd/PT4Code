N,M=gets.split.map(&:to_i)
A=N.times.map{[]}
B=M.times.map{|i|
  a,b=gets.split.map(&:to_i)
  A[a-1]<<b
  [a,b]
}
A.each{|a|a.sort!}
B.each{|a,b|puts "%06d%06d"%[a,A[a-1].index(b)+1]}