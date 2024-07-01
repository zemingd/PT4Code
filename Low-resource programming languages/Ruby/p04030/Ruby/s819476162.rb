s = gets.chomp.chars
res = Array.new
s.each do |e|
	if e == "0"
		res << 0
	elsif e == "1"
		res << 1
	else
		res.pop
	end
end
puts res.join