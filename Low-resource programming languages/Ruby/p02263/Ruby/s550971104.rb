formula = gets
arr = formula.split(" ")
(arr.size).times do |i|
	if arr[i] == "+"
		arr[i] = arr[i - 2].to_i + arr[i - 1].to_i
		arr.delete_at(i - 1)
		arr.delete_at(i - 2)
	elsif arr[i] == "-"
		arr[i] = arr[i - 2].to_i - arr[i - 1].to_i
		arr.delete_at(i - 1)
		arr.delete_at(i - 2)
	end
end
(arr.size).times do |i|
	if arr[i] == "*"
		arr[i] = arr[i - 2].to_i * arr[i - 1].to_i
		arr.delete_at(i - 1)
		arr.delete_at(i - 2)
	end
end
puts arr