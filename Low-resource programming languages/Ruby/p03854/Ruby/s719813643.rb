xs = %w(dreameraser dreamerase dreamer eraser dream erase)
s = gets.chomp
while s.size > 0
	x = xs.find do |x|
		pos = s.index(x)
		(not pos.nil?) && pos == 0
	end
	break if x.nil?
	s = s[x.size, s.size]
end

puts s.size > 0 ? 'NO' : 'YES'
