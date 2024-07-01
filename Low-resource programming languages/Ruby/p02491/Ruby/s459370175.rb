input = gets.split(" ")
a = input[0].to_i
b = input[1].to_i
r1 = a / b
r2 = a % b
r3 = a.to_f / b.to_f
puts r1.to_s + " " + r2.to_s + " " + r3.to_s