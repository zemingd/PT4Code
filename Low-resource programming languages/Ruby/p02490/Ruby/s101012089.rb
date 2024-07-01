#coding:utf-8
require 'scanf'
input = scanf("%d %d")
x = input[0]; y = input[1]
while x != 0 && y != 0
        if x < y then
                print x," ",y,"\n"
        else    print y," ",x,"\n"
        end
        input = scanf("%d %d")
        x = input[0]; y = input[1]
end