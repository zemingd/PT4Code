#coding:utf-8
require 'scanf'
input = scanf("%d")
#p input
answer = 1
for cnt in 0...3 do
        answer = answer * input[0]
end
printf("%d\n", answer)
~                        