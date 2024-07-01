h, w = gets.chomp.split(" ").map(&:to_i)

area = []
h.times do
  row = gets.chomp.split("")
  area << row
end

flag = "Yes"

h.times do |row_no|
	w.times do |item_no|
		if area[row_no][item_no] == "."
			next
		end
		if area[row_no][item_no] == "#"
			if row_no-1 >0
				if area[row_no-1][item_no] == "#"
					next
				end
			end
			if row_no+1 < h
				if area[row_no+1][item_no] == "#"
					next
				end
			end
			if item_no-1 >0
				if area[row_no][item_no-1] == "#"
					next
				end
			end
			if item_no+1 <w
				if area[row_no][item_no+1] == "#"
					next
				end
			end

			flag = "No"
			break
		end
	end
end

puts flag