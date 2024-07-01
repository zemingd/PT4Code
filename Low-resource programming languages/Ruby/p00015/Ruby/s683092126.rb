n=gets().to_i
n.times(){|i|
	a=gets().to_i
	b=gets().to_i
	if a+b>=10**80
		puts'overflow'
	else
		puts a+b
	end
}