w = ""
t = []
w = gets.chomp.downcase
count = 0
while (t = gets.chomp) != "END_OF_TEXT"
	t.downcase.split{" "}.each do |c|
		if c == w
			count += 1
		end
 	end
end
puts puts count