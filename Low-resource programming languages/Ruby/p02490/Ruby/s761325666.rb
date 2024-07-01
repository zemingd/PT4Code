#coding:utf-8
require 'scanf'
loop do
        input = scanf("%d %d")
        x = input[0]; y = input[1]
        if x == 0 && y == 0 then break
        elsif x < y then
                print x," ",y,"\n"
        else    print y," ",x,"\n"
        end
end