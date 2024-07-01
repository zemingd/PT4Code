require 'scanf'
input = scanf("%d %d")
a = input[0]; b = input[1]
d = a / b
r = a % b
f = a.to_f / b.to_f
puts "#{d} #{r} #{f}"