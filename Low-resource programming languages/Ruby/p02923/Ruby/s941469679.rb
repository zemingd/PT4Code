n = gets.chomp.to_i
arr = gets.chomp.split.map(&:to_i)
sum = 0
(n-1).times do |i|
	if arr[i] >= arr[i + 1]
		sum += 1
	else
		sum = 0
	end
end
puts sum

