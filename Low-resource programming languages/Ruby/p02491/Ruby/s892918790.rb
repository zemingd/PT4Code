require 'scanf'
input = scanf("%d %d")
a = input[0]
b = input[1]
puts sprintf("%d %d %.5f", a/b, a%b, a.to_f/b)