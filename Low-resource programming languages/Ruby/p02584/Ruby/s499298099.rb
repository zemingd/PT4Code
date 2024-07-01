x,k,d=gets.split.map &:to_i
x=x.abs
if k*d<=x
	p x-k*d
else
	t=x/d
	k-=t
	x-=d*t
	p k%2==0 ? x : d-x
end