n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)
sum = 0
min = 114514810

n.times do |i|
	if min > arr[i] then
		min = arr[i]
		sum += 1
	end
end

puts sum

