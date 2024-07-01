#coding : utf-8
require 'scanf'
input = scanf("%d %d %d")
for i in 0...input.length do
        for j in 0...input.length-1 do
                if input[j] > input[j+1] then
                        input[j],input[j+1] = input[j+1],input[j]
                end
        end
end

print input[0]," ",input[1]," ",input[2]
puts