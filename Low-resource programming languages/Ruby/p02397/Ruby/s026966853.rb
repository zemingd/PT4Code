while true
	nums = gets.split( " " ).map { | val | val.to_i }
	if 0 == nums[0] and 0 == nums[1]
		break
	else
		nums.sort!
		puts( "#{nums[0]} #{nums[1]}" )
	end
end