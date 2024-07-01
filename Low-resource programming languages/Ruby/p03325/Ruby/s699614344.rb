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
A=gets.chomp.split(' ').map{|n| n.to_i}
def count2x(a)
	cnt = 0
	while(a%2==0)
		cnt+=1
		a = a/2
	end
	cnt
end

sum = 0
A.each{|a|
	sum += count2x(a)
}
puts sum
