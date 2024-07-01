require 'set'
N,M=gets.split.map(&:to_i)
A={}
B=M.times.map{|i|
  a,b=gets.split.map(&:to_i)
  A[a-1]=SortedSet.new if !A[a-1]
  A[a-1]<<b
  [a,b]
}
B.each{|a,b|puts "%06d%06d"%[a,A[a-1].find_index(b)+1]}