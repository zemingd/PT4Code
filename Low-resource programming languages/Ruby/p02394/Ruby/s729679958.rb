w, h, x, y, r = gets.split.map(&:to_i)
x1 = r
x2 = w - r
y1 = r
y2 = h - r
if x1 <= x && x <= x2 then
	if y1 <= y && y <= y2 then
		puts "Yes"
	else
		puts "No"
	end
else
	puts "No"
end