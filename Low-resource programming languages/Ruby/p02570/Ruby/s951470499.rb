a = gets.split(" ")
d = a[0].to_i
t = a[1].to_i
s = a[2].to_i

puts( ((s * t) >= d) ? "Yes" : "No")