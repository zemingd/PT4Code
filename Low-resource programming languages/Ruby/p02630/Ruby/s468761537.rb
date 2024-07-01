_,A,_,*E=$<.map{_1.split.map &:to_i}
t=[s=0]*2e5
A.map{t[_1]+=1}
E.map{t[_1],t[_2]=0,t[_2]+u=t[_1]
p s+=u*=y-x}