N,M=gets.split.map &:to_i
X=Array.new(N).map{Array.new()}
Y=Array.new()
M.times{|i|
  a,b=gets.split.map &:to_i
  X[a-1] << b
  Y[i]=[a-1,b]
}
N.times{|i|X[i].sort!}
M.times{|i|
  printf("%06d%06d\n",Y[i][0]+1,X[Y[i][0]].find_index(Y[i][1])+1)
}