max=10**80-1
n=gets.to_i
n.times{
	a=gets.to_i
	b=gets.to_i
	if(a+b>max) then puts 'overflow'
	else puts a+b
	end
}
