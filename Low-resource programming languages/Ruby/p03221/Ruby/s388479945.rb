N,M=gets.split.map &:to_i
X=Array.new(N).map{Array.new()}
Y=Array.new()
P=Array.new()
M.times{|i|
  a,b=gets.split.map &:to_i
  X[a-1] << [i,b]
  Y[i]=[a-1,b]
  P[i]=a-1
}
O=Array.new(N).map{Array.new()}
N.times{|i|
  X[i].sort_by!{|x|x[1]}
  X[i].size.times{|j|
    O[i][X[i][j][0]]=j
  }
}
M.times{|i|
  printf("%06d%06d\n",Y[i][0]+1,O[P[i]][i]+1)
}