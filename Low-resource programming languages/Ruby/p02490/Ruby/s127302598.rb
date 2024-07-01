#coding:utf-8
require 'scanf'
input = scanf("%d %d")
#p input
while input[0] != 0 || input[1] != 0 do
        if input[0] > input[1] then
                a = input[0]
                input[0] = input[1]
                input[1] = a
        end
        printf("%d %d\n", input[0], input[1])
        input = scanf("%d %d")
        #p input
end