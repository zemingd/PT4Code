def rot(n, string)
	string.chars.map do |c|
		((c.ord - 'A'.ord + n) % 26 + 'A'.ord).chr
	end.join()
end

lines = readlines
n = lines[0].to_i
puts rot(n, lines[1])
