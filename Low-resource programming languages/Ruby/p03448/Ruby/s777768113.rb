a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i

n = 0
for i in 0..a
    for j in 0..b
        for k in 0..c
            n += 1 if i * 500 + j * 100 + k * 50 == x
        end
    end
end
puts n