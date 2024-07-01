# coding: utf-8

require 'scanf'
while true
	input = scanf("%d %d")
	input[0].to_i
	input[1].to_i
	break if input[0] == 0 && input[1] == 0
	if input[0] > input[1]
		c = input[0]
		input[0] = input[1]
		input[1] = c
	end
	printf("%d %d\n",input[0],input[1])
end