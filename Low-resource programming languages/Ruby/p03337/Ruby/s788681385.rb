a,b=gets.chomp.split(" ").map { |e| e.to_i }

x = a+b
y = a-b
z = a*b
max = -1000000000000

max = max > x ? max : x
max = max > y ? max : y
max = max > z ? max : z

puts max
