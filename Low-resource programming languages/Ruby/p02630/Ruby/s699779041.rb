Z=[0]*(10**5+1)
N=gets.to_i
A=gets.split.map &:to_i
S=0
A.map{|a|
Z[a]+=1
S+=a
}
Q=gets.to_i
Q.times{
B,C=gets.split.map &:to_i
S-=B*Z[B]
S+=C*Z[B]
Z[C]+=Z[B]
Z[B]=0
p S
}