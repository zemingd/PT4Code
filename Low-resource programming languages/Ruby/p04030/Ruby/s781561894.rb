input = gets.chomp.split("")
s = []
input.each do |x|
	if x == "B" 
		s.pop
	else
		s.push x
	end
end
puts s.join