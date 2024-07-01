a,b = gets.split.map(&:to_i)

output = []
output << a / b
output << a % b
output << Rational(a,b)

print output.join(" ")
