num = gets.to_i
nums = gets.split(" ").map(&:to_i)

for i in 0...num
	if nums[i] % 2 == 0
		if nums[i] % 3 != 0 && nums[i] % 5 != 0
			puts "DENIED"
          	exit
		end
	end
end
puts "APPROVED"