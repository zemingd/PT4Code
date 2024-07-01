s = gets.chomp
prev = s[0]
cnt = 0
1.upto(s.length-1) do |i|
	if s[i] == prev 
		cnt += 1
		#puts "i:#{i}"
		prev = prev == "0" ? "1" : "0"
	else
		prev = s[i]
	end
end
puts cnt
