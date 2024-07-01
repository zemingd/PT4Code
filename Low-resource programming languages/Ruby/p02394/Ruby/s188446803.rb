W, H, x, y, r = gets.split.map(&:to_i)
if 0 <= x - r && 0 <= y - r && x + r <= W && y + r <= H
	puts "Yes"
else
	puts "No"
end