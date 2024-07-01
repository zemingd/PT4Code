require 'scanf'

input = scanf("%d %d")
a = input[0].to_i
b = input[1].to_i
printf("%d %d %.5f\n", a/b, a%b, a/b.to_f)