line = gets
line = line.split(" ")
def abs(n)
	if n<0
		-n
	else
		n
	end
end

def simple_calc(x,y)
	if abs(x)==abs(y)
		if x==y
			0
		else
			1
		end
	elsif x==0
		if y>0
			y
		else
			abs(y)+1
		end
	elsif x>0
		if y>0
			if x>y
				x-y+2
			else
				y-x
			end
		else #y<0
			if x>-y
				x+y+1
			else
				-y-x+1
			end
		end
	else #x<0
		if y>0
			y-x
		else #y<0
			if x>y
				2+x-y
			else
				y-x
			end
		end
	end
end
print( simple_calc(line[0].to_i,line[1].to_i) )