line = gets.split(' ')
a = line[0].to_i
b = line[1].to_i

puts sprintf("%d %d %#0.5f", a / b, a % b, a.to_f / b.to_f)