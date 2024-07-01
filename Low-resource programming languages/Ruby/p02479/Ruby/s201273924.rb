#coding:utf-8
require 'scanf'
input = scanf("%f")
#p input
r = input[0]
circle = r * 2 * Math::PI
area = r * r * Math::PI
printf("%f %f\n", circle, area)