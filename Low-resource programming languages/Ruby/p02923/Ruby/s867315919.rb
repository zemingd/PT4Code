n = gets.chomp.to_i
arr = gets.chomp.split.map(&:to_i)
sum = 0
max = 0
(n-1).times do |i|
	if arr[i] >= arr[i + 1]
		sum += 1
	else
		max = sum if max < sum
		sum = 0
	end
end
puts max

