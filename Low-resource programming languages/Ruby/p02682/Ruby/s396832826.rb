# frozen_string_literal: true

input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i
c = input[2].to_i
k = input[3].to_i

point = 0
ka = k - a
if ka <= 0
    point = k
else
    point = a
    kb = ka - b
    if kb > 0
        # kc = kb - c
        # if kc <= 0
        #     point = a - c
        # else
            point = a - kb
        # end
    end
end

puts point
