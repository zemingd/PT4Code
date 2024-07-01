tag = gets.chomp
cnt = 0
loop do
	buf = gets.chomp.split(" ")
	buf.each do | d |
		cnt = cnt + 1 if d.downcase =~ /#{tag}/
	end
	break if buf.include?("END_OF_TEXT")
end
puts cnt