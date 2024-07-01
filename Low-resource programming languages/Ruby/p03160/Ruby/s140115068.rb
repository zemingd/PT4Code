N=gets.to_i
h=gets.split(" ").map(&:to_i)
tmp1,tmp2=0,(h[1]-h[0]).abs
for i in 2..N-1
	tmp1,tmp2=tmp2,[tmp1+(h[i-2]-h[i]).abs,tmp2+(h[i-1]-h[i]).abs].min
end
puts tmp2