n=gets.to_i
a=gets.chomp.split(" ").map(&:to_i)

def Whatcnt(_num)
	r=_num%2
	cnt=0
	while(r==0)
		cnt+=1
		_num/=2
		r=_num%2
	end
	return cnt
end
sum=0
a.each do|i|
	sum+=Whatcnt(i)
end
puts sum