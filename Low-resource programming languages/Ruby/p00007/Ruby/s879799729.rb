n=gets.chomp.to_i
res=100
n.times{
	res=(res*1.05).ceil
}
puts res*1000
