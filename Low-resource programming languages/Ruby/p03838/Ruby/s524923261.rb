def solve(x, y)
	ay=y.abs
	t=0
	ax=x
	if x<0
		t=1
		ax=x.abs
	end
	while ax<ay
		ax+=1
		t+=1
	end
	p y<0 ? t+1 : t
end	

def rev(x)
	return -x
end

def add(x)
	return x+1
end


if __FILE__==$0
	data=gets.strip.split(" ").map(&:to_i)
	solve(data[0],data[1])
end