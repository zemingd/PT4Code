N=gets.to_i
A=gets.split.map &:to_i
S=Array.new(100001,0)
for i in 0...N do
    a=A[i]
    S[a-1]+=1
    S[a]+=1
    S[a+1]+=1
end
p S.max