i = gets.chomp.to_s
len = i.length

until i == "0"
	arr = i.split("")
	sum = 0
	for k in 0..len - 1
		sum += arr[k].to_i
	end
	
	puts sum
	
	i = gets.chomp.to_s
	len = i.length
end