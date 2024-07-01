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

INT_MAX = 100001
N,d=gets.chomp.split(' ').map{|n| n.to_i}
DP=Array.new(N+1)
DP[0]=0
1.upto(N){|i|
	maxsix = 1
	while(maxsix<=i)
		maxsix *= 6
	end
	maxsix /= 6
	min_by_six = DP[i-maxsix]+1
	maxnine = 1
	while(maxnine<=i)
		maxnine *= 9
	end
	maxnine /= 9
	min_by_nine = DP[i-maxnine]+1
	DP[i] = min_by_six < min_by_nine ? min_by_six : min_by_nine
}
puts DP[N]
