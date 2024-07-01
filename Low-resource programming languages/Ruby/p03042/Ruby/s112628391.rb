num = gets.chomp
if num[0..1].to_i == 0 || num[2..3].to_i == 0 then puts "NA"; exit end
puts(if num[0..1].to_i > 12
	if num[2..3].to_i > 12
		"NA"
	else
		"YYMM"
	end
else
	if num[2..3].to_i > 12
		"MMYY"
	else
		"AMBIGUOUS"
	end
end)