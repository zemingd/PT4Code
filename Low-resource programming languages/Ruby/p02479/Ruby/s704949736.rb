require 'scanf'
input = scanf("%f")
#p input
r = input[0];
area = r * r * Math::PI
length = 2 * r * Math::PI
printf("%f %f\n", area, length)