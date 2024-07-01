n,k,q=gets.split.map &:to_i
s=[]
ans=Array.new(n,k-q)
q.times{|i|s[i]=gets.to_i; ans[s[i]-1]+=1}
n.times{|i| puts ans[i]>0? :Yes : :No}
