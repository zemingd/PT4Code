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

N,d=gets.chomp.split(' ').map{|n| n.to_i}
A = {}
0.upto(N-1){|d|
	tmp=gets.chomp.to_i
	if(A[tmp].nil?)
		A[tmp]=1
	else
		A[tmp]^=1
	end
}
cnt = 0
A.each{|k,v|
	v==1 ? cnt+=1 : cnt
}
puts cnt