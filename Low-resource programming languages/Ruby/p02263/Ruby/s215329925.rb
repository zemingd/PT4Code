formula = gets
arr = formula.split(" ")
while arr.size != 1
	(arr.size).times do |i|
		if arr[i] == "+" and ((arr[i - 1] != "-" or arr[i - 1] != "*") and (arr[i - 2] != "-" or arr[i - 2] != "*"))
			arr[i] = arr[i - 2].to_i + arr[i - 1].to_i
			arr.delete_at(i - 1)
			arr.delete_at(i - 2)
			break
		elsif arr[i] == "-" and ((arr[i - 1] != "+" or arr[i - 1] != "*") and (arr[i - 2] != "+" or arr[i - 2] != "*"))
			arr[i] = arr[i - 2].to_i - arr[i - 1].to_i
			arr.delete_at(i - 1)
			arr.delete_at(i - 2)
			break
		elsif arr[i] == "*" and ((arr[i - 1] != "-" or arr[i - 1] != "+") and (arr[i - 2] != "-" or arr[i - 2] != "+"))
			arr[i] = arr[i - 2].to_i * arr[i - 1].to_i
			arr.delete_at(i - 1)
			arr.delete_at(i - 2)
			break
		end
	end
end
puts arr[0]