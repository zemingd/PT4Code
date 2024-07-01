input = gets().split(" ")
W, H, x, y, r = input[0].to_i, input[1].to_i, input[2].to_i, input[3].to_i.to_i, input[4].to_i

if x + r <= W && x - r >= 0 && y + r <= H && y - r >= 0
	puts "Yes"
else
	puts "No"
end