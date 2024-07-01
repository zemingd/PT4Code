n=gets.to_i
as=gets.split.map(&:to_i)
ans={}
n.times{|i| ans[i+1]=0}
as.each{|an| ans[an]+=1}
puts ans.values
