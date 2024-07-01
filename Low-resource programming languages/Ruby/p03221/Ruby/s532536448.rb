N,M=gets.split.map(&:to_i)
A,B={},{}
C=M.times.map{|i|
  a,b=gets.split.map(&:to_i)
  (A[a-1]||=[])<<b
  [a,b]
}
A.values.each{|v|v.sort.each_with_index{|y,i|B[y]=i+1}}
C.each{|a,b|puts "%06d%06d"%[a,B[b]]}
