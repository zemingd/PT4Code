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

MAX_INT = 9999999999999999

N,x=gets.chomp.split(' ').map{|n| n.to_i}
A=gets.chomp.split(' ').map{|n| n.to_i}.sort
cnt = 0
sum = 0
for i in 0..(N-1)
	if(sum + A[i] > x)
		break
	end
	sum += A[i]
	cnt += 1
end
if(x > sum)
	cnt -= 1
end
puts cnt