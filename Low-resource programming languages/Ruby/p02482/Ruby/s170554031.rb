#coding:utf-8
require 'scanf'
input = scanf("%d %d")
#p input
a = input[0]
b = input[1]
if a < b then
        printf("a < b\n")
elsif a > b then
        printf("a > b\n")
else
        printf("a == b\n")
end