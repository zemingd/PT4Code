#coding:utf-8
require 'scanf'
input = scanf("%d")
#p input
circle = input[0] * 2 * Math::PI
area = input[0] * input[0] * Math::PI
printf("%f %f\n", circle, area)