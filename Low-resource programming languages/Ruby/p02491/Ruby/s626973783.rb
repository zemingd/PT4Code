input = gets.split(" ")
a = input[0].to_i
b = input[1].to_i
d = a / b
r = a % b
f = a.to_f / b.to_f
puts d.to_s + " " + r.to_s + " " + f.round(5).to_s