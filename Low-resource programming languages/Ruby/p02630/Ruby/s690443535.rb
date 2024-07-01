_,A,_,*E=$<.map{_1.split.map &:to_i}
s=A.sum
A=A.tally
E.map{|x,y|A[x]||=0
A[y]||=0
p s+=A[x].*y-x
A[x],A[y]=0,A[x]}