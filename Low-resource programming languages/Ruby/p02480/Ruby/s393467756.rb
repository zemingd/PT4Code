#coding:utf-8
require 'scanf'
input = scanf("%d")
#p input
answer = 1
for num in 0…3 do
answer = input[0] * answer
end
printf("%d\n", answer)