gets
number=gets.chomp.split(" ").map(&:to_i)
number.sort
def max_CoDi(_num1,_num2)
	if(_num1<_num2)
		max_CoDi(_num2,_num1)
	end
		r=_num1%_num2
		if(r==0)
			return _num2
		end
		max_CoDi(_num2,r)
end
(number.size-1).times do|i|
	max_num=max_CoDi(number[0],number[1])
	number[1]=max_num
	number.shift()
end
print(number[0])