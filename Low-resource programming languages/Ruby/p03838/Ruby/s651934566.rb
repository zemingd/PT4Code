def solve(x, y)
	t=0
	if x<y
		if x>=0 && y>=0
			t=y-x
		elsif x<0 && y>=0
			y=-y
			t=x-y+1
		elsif x<0 && y<0
			t=y-x
		end
	elsif x>y
		if x>=0 && y>=0
			t=x-y+2
		elsif x>=0 && y<0
			y=-y
			t=y-x+1
		elsif x<0 && y<0
			x=-x
			y=-y
			t=y-x+2
		end
	elsif x==y
		t=0
	end
	p t
end

if __FILE__==$0
	data=gets.strip.split(" ").map(&:to_i)
	solve(data[0],data[1])
end