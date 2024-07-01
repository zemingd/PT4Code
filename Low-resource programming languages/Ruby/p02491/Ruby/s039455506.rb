require 'scanf'
input = scanf("%d %d")
#p input
a = input[0];
b = input[1];
d = a / b
r = a % b
f = (a * 1.0) / (b * 1.0)
printf("%d %d %f\n", d, r, f)