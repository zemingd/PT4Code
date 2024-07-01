n=gets.to_i
num=Array.new(5)
5.times do|i|
	num[i]=gets.to_i
end
if ((n-num.min)%num.min)!=0
	print 5+((n-num.min)/num.min)+1
else
	print 5+((n-num.min)/num.min)
end
