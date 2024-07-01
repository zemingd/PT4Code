n,m=gets.split.map &:to_i
res=[0]*n
m.times do
	a,b=gets.split.map &:to_i
	res[a-1]+=1
	res[b-1]+=1
end
puts res
