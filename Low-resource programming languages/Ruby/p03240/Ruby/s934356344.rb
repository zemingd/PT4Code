_,*A=*$<
101.times{|x|101.times{|y|a=A.map{|s|i,j,k=s.split.map &:to_i;[k,(i-x).abs+(j-y).abs]}
K,D=a.max
a.all?{|k,d|k==[K+D-d,0].max}&&$><<[x,y,K+D]*" "}}