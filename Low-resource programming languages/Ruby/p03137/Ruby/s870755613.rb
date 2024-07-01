N,M=gets.split.map &:to_i
X=gets.split.map &:to_i
X.sort!
A=[*1...M].map{|i|X[i]-X[i-1]}
A.sort!
p (M>N)? A[0...M-N].inject(:+):0