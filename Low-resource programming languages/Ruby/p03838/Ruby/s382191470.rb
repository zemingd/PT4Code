x,y=gets.chomp.split(" ").map{|n| n.to_i}
@min = 999999999999999
def min(a)
	if(@min > a)
		@min = a
	end
end
min(y-x) if(y-x >= 0)
min(y+x+1) if(y+x >= 0)
min(-y-x+1) if(-y-x >= 0)
min(-y+x+2) if(-y+x >= 0)
puts @min

