input = gets.split(" ")
w = input[0].to_i
h = input[1].to_i
x = input[2].to_i
y = input[3].to_i
r = input[4].to_i

top_x = x
top_y = y + r

bottom_x = x
bottom_y = y - r

right_x = x + r
right_y = y

left_x = x - r
left_y = y


if 0 <= left_x && 0 <= bottom_y && top_y <= h && right_x <= w
	puts "Yes"
else
	puts "No"
end