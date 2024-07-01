a,b,c=gets.split(" ").map(&:to_i)
v=0
while a<=b
	if (c%a)==0
		v+=1
	end
	a+=1
end
puts v