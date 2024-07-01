tag = gets.chomp.downcase
cnt = 0
loop do 
	buf = gets.chomp
	buf.downcase.split(/[^a-z]/).each do | w |
		cnt = cnt + 1 if w == tag
	end
	break if buf.include?("END_OF_TEXT")
end
puts cnt