# データを入れる配列
data = gets.chomp.split("\s")
middle = data[0].to_i
final = data[1].to_i
reexam = data[2].to_i

until data == ["-1", "-1", "-1"]	#<= dataは文字列のまま

	# 中間試験 + 期末試験の点数の和で判別
	sum = middle + final
	
	# 中間試験 or 期末試験の欠席者: F
	if (middle == -1) or (final == -1)
		puts "F"
	elsif sum >= 80
		puts "A"
	elsif sum >= 65
		puts "B"
	elsif sum >= 50
		puts "C"
	elsif sum >= 30
		if reexam >= 50
			puts "C"
		else
			puts "D"
		end
	else
		puts "F"
	end
	
	data = gets.chomp.split("\s")
	middle = data[0].to_i
	final = data[1].to_i
	reexam = data[2].to_i
end