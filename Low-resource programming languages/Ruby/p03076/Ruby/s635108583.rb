arr = Array.new(5, 0)
sum = 0
one = 10
arr.size.times do |i|
	arr[i] = gets.to_i
	#sum += arr[i].ceil(-1) #1の位を切り上げ
	sum += (arr[i] / 10.0).ceil * 10
	if one > arr[i] % 10 && arr[i] % 10 != 0
		one = arr[i] % 10
	end
end
if one == 10
	one = 0
end
puts sum - 10 + one