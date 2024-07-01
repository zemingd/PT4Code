#coding: utf-8
require 'scanf'
input = scanf("%d %d")
a = input[0]; b = input[1]
printf("%d %d %f\n",a/b,a%b,a*1.0/b)