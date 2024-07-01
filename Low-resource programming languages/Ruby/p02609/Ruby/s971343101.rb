N = gets.to_i
X = gets.to_i(2)

F = Hash.new{|h,x|
	h[x] = (if x==0 then 0 else
		nb = x.to_s(2).count ?1
		1+h[x%nb]
	end)
}

x = 1<<N
puts N.times.map{
	x>>=1
	F[X^x]
}
