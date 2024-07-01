#coding:utf-8
require 'scanf'
input = scanf("%f")
#p input
r = input[0]
l = r * r * Math::PI
a = 2 * r * Math::PI
printf("%f %f\n", l, a)