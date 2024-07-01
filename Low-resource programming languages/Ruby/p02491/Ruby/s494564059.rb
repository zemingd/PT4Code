#coding:utf-8
require 'scanf'
input = scanf("%d %d")
#p input
q = input[0] / input[1]
r = input[0] % input[1]
a = input[0] * 1.0 / input[1]
printf("%d %d %f\n", q, r, a)