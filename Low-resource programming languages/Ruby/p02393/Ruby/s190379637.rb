def toi(a)
	b = []
	a.each do |n|
		b << n.to_i
	end
	b	
end

a = toi(gets.split).sort
a.each do |i|
	print("#{i} ")
end
print("\n")