n = gets.to_i
nums = gets.split( " " )
n = n - 1
n.downto( 0 ) { |i|
	print( "#{nums[i]}" )
	if i == 0
		print( "\n" )		
	else
		print( " " )		
	end
}