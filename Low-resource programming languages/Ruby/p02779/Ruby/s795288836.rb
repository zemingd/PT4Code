n = gets.to_i
nums = gets.chomp.split(" ").map(&:to_i)
for i in 0...n-1
	for j in i+1...n
		if nums[i] == nums[j] then puts "NO" ; exit end
	end
end
puts 'YES'