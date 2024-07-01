info=gets.chomp.split(" ").map(&:to_i)
def cal_count(k,_point)
	_count=0
	while k>_point
		_point=_point*2
		_count+=1
	end 
	return _count
end
result=0.0
info[0].times do|i|
	result+=(0.5**(cal_count(info[1],i+1))).to_f
end
print result*(1.0/info[0])
