nums = gets.split("").map(&:to_i)

if nums[0] == nums[1] && nums[1] == nums[2]
	puts "Yes"
elsif nums[1] == nums[2] && nums[2] == nums[3]
	puts "Yes"
else
	puts "No"
end


