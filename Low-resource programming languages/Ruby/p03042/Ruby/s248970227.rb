s = gets.chomp
up = s.slice(0,2).to_i
down = s.slice(2,2).to_i
yymm = 1 <= down && down <= 12
mmyy = 1 <= up && up <= 12

if yymm && !mmyy
	puts "YYMM"
elsif !yymm && mmyy
	puts "MMYY"
elsif yymm && mmyy
	puts "AMBIGUOUS"
else
	puts "NA"
end

