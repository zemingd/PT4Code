n=gets.to_i
x=100000
n.times{
	x=(x*1.05).to_i
	x=(x/1000)*1000+1000 if x%1000!=0
}
p x