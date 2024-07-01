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
def lcm(a,b)
	a/gcd(a,b)*b
end
def nlcm(arr)
	if(arr.size==1)
		return arr[0]
	end
	lcm = arr[0]
	1.upto(arr.size-1){|i|
		lcm = lcm(lcm, arr[i])
	}
	lcm
end

N,_=gets.chomp.split(' ').map{|n| n.to_i}
A=gets.chomp.split(' ').map{|n| n.to_i}
lcm = nlcm(A)
puts A.inject(0){|sum,a| sum += (lcm-1) % a}

