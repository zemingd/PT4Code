n=gets.to_i
A=gets.split.map &:to_i
B=gets.split.map &:to_i
t=0
n.times{|i|
m=[A[i],B[i]].min
t+=m
A[i]-=m
B[i]-=m
m=[A[i+1],B[i]].min
t+=m
A[i+1]-=m
B[i]-=m
}
p t