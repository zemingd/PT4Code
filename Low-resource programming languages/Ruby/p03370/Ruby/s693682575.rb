n,x=gets.split.map(&:to_i)
min=10**9
n.times do
	m=gets.to_i
	x-=m
	min=m if m<min
end

p n+x/min