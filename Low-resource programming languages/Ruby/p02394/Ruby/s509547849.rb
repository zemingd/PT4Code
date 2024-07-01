inputs = gets.split
W = inputs[0]
H = inputs[1]
x = inputs[2]
y = inputs[3]
r = inputs[4]

X = x + r
Y = y + r

if X <= W && Y <= H
   puts "Yes"
else
   puts "No"
end