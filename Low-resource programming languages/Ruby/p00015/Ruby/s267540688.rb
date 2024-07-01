n=gets().to_i
n.times(){|i|
	a=gets().to_i
	b=gets().to_i
	if a+b>=10**81
		puts'overflow'
	else
		puts a+b
	end
}