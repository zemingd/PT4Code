while line = gets
	m, f, r = line.split( " " ).map { | val | val.to_i }
	break if -1 == m && -1 == f && -1 == r
	
	mf = ( m + f )
	if -1 == m || -1 == f
		puts( "F" )
	elsif 80 <= mf
		puts( "A" )
	elsif 65 <= mf && mf < 80
		puts( "B" )
	elsif 50 <= mf && mf < 65
		puts( "C" )
	elsif 30 <= mf && mf < 50
		if 50 <= r
			puts( "C" )
		else
			puts( "D" )
		end
	else
		puts( "F" )	
	end
end