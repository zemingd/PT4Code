# coding: utf-8

require 'scanf'
input = scanf("%d %d")	
a = input[0].to_i
b = input[1].to_i
if a < b
	printf("a < b")
elsif a == b
	printf("a == b")
else
	printf("a > b")
end
puts