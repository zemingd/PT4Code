s = gets.chomp
(s.length - 1).times do |i|
	if s[i] == s[i+1]
		puts "Bad"
		exit
	end
end
puts "Good"