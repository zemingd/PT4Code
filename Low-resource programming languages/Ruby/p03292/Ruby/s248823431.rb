a=gets.split(' ').map(&:to_i)
cost=0
if((a[0]-a[1]).abs>(a[0]-a[2]).abs)
	cost+=((a[0]-a[2]).abs+(a[2]-a[1]).abs)
else
	cost+=((a[0]-a[1]).abs+(a[1]-a[2]).abs)
end
puts cost