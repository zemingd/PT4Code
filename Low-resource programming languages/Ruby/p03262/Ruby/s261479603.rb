def gcd(a,b)
	if(a>b)
		return gcd(b,a)
	end
	if(b%a == 0)
		return a
	else
		return gcd(a,b%a)
	end
end
N,X=gets.chomp.split(' ').map{|n| n.to_i}
A=gets.chomp.split(' ').map{|n| (n.to_i-X).abs}
puts A.inject(A[0]){|g,a| gcd(g,a)}
