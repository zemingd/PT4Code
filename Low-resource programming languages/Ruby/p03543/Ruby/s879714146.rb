nums = gets.split("").map(&:to_i)
cnt = 0
if nums[0] == nums[1]
	cnt += 1

end
if nums[1] == nums[2]
	cnt += 1
	
end
if nums[2] == nums[3]
	cnt += 1
	
end
if cnt >= 2
	puts "Yes"
else
	puts "No"
end