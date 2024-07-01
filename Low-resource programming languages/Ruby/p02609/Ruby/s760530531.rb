N = gets.to_i

X = gets.chomp
X1 = X.count ?1

R = [nil]*N
XR = [0,0]
N.times.inject(1){|b,n|
	R[-1-n] = (1<X1 ? b%(X1-1) : 0),b%(X1+1)
	if X[-1-n]==?1
		XR[0] += R[-1-n][0]
		XR[1] += R[-1-n][1]
	end
	next b<<1
}

F = lambda{
	_F = [nil]*N
	_F[0] = 0
	return lambda{|x|
		next _F[x] if _F[x]
		n1 = x.to_s(2).count ?1
		next _F[x] = 1+F[x%n1]
	}
}.call

puts N.times.map{|i|
	x,d = X[i]==?1 ? [XR[0]-R[i][0],X1-1] : [XR[1]+R[i][1],X1+1]
	next d==0 ? 0 : 1+F[x%d]
}
