n,k,q,*a=gets(p).split.map &:to_i
s=[0]*n
a.map{|i|s[i-1]+=1}
puts s.map{|x|x>(q-k)?'Yes':'No'}