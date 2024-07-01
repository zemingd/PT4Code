# coding: utf-8

require 'scanf'
input = scanf("%d %d %d")
input[0].to_i
input[1].to_i
input[2].to_i

input.sort!

3.times do |i|
	if i != 2
		printf("%d ",input[i])
	else
		printf("%d\n",input[i])
	end
end