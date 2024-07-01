#coding:utf-8
require 'scanf'
input = scanf("%d %d %d")
#p input
for num in 0...3 do
        if num % 2 == 0 && input[0] > input[1] then
                a = input[0]
                input[0] = input[1]
                input[1] = a
        elsif num % 2 == 1 && input[1] > input[2] then
                a = input[1]
                input[1] = input[2]
                input[2] = a
        end
end
printf("%d %d %d\n",input[0] ,input[1], input[2])