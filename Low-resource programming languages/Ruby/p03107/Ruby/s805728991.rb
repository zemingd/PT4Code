s = gets.chomp

firstCount = s.length

while s.split('').uniq.count > 1 	
	s.gsub!(/01/, "")
	break if s.split('').uniq.count <= 1
	s.gsub!(/10/, "")
end
puts firstCount - s.length