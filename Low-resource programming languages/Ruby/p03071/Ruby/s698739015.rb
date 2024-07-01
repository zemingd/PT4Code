a = gets.to_i
b = gets.to_i
cnt = 0

for i in 1..2
    if a > b then
        cnt = cnt + a
        a = a - 1
    else
        cnt = cnt + b
        b = b - 1
    end
end

p cnt