while true
	nums = gets.split( " " ).map { | val | val.to_i }
	break if 0 == nums[0] && 0 == nums[1]

	nums[0].times {
		puts( "#" * nums[1] )
	}
	print( "\n" )
end