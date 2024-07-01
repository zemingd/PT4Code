
	loop do
	
	date = gets
	
	break unless date
	
	date.split
	puts date[0].to_i + date[1].to_i
	
	end