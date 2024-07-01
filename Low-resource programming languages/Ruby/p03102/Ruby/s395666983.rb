info=gets.chomp.split(" ").map(&:to_i)
b=gets.chomp.split(" ").map(&:to_i)
count=0
info[0].times do|i|
	a=gets.chomp.split(" ").map(&:to_i)
	result=0
	info[1].times do|j|
		result+=a[j]*b[j]
	end
	if(result+info[2]>0)
		count+=1
	end
end
p count