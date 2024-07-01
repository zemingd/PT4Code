S = gets.strip

d1 = S[0...2].to_i
d2 = S[2..-1].to_i

def check(m)
	1 <= m && m <= 12
end

if check(d1)
	if check(d2)
		puts "AMBIGUOUS"
	else
		puts "MMYY"
	end
else
	if check(d2)
		puts "YYMM"
	else
		puts "NA"
	end
end

