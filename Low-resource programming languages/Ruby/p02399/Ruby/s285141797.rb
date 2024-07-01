a,b = gets.split.map(&:to_i)

output = []
output << a / b
output << a % b
output << a.to_f / b

print output.join(" ")
