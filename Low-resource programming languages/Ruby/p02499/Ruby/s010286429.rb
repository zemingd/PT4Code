result = Array.new(26, 0)
while input = gets
	x = input.upcase
	x.codepoints {|cp| 
		if cp >= 65 && cp <= 90
			result[cp - 65] = result[cp - 65] + 1
		end
	}
end
26.times do |i|
	print (i + 97).chr, " : ", result[i], "\n"
end