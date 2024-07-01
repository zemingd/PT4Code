n=gets.to_i
as=gets.split.map(&:to_i)
ans=[0]*n
n.times{|i| ans[as[i]-1]=i+1}
puts ans.join(" ")
