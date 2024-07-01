inputs = gets.strip.split(' ')
inputs.map!{|i| i.to_i}
W = inputs[0]
H = inputs[1]
x = inputs[2]
y = inputs[3]
r = inputs[4]


width_in  = ((x + r) <= W) && ((x - r) >= 0)
height_in = ((y + r) <= H) && ((y - r) >= 0)

if width_in && height_in
	puts "Yes"
else
	puts "No"
end
