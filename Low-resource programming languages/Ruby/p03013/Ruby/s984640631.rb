$m1=1000000007
def f(d)
	if d<0
		return 0
	elsif d<2
		return 1
	else
		f1=0
		f2=1
		d.times{
			t=(f1+f2)%$m1
			f1=f2
			f2=t
		}
		return f2
	end
end 

main=
d=gets.split(" ").map{|e| e.to_i}
arr=[-1]
d[1].times{
	arr<<gets.to_i
}
ans=1
arr<<(d[0]+1)
(arr.size-1).times{|i|
		ans=(ans*f((arr[i+1]-1)-(arr[i]+1)))%$m1
}
p ans