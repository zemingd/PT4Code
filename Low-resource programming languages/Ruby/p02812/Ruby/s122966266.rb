num = gets.to_i - 2
arr = gets.to_s
ans = 0

num.times do |i|
	if arr[i] == "A"
		if arr[i+1] == "B"
			if arr[i+2] == "C"
				ans += 1
			end
		end
	end
end
p ans