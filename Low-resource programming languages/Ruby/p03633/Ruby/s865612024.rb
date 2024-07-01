require 'pp'
# IS_DEBUG = true
IS_DEBUG = false
def dputs str
	if(IS_DEBUG)
		puts str
	end
end
def dpp str
	if(IS_DEBUG)
		pp str
	end
end

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

N,d=gets.chomp.split(' ').map{|n| n.to_i}
A = Array.new(N)
0.upto(N-1){|d|
	A[d],dum=gets.chomp.split(' ').map{|n| n.to_i}
}
puts nlcm(A)
