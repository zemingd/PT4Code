x = gets.to_i

list = []
for i in 1..x do
    a = 0
    for j in 2..x do
        a = i ** j
        if a <= x
            list.push(a)
        else
            break
        end
    end
end

p list[-1]
