A = gets.to_i
B = gets.to_i
C = gets.to_i
X = gets.to_i
a = 0
for i in 0..A
    for j in 0..B
        for k in 0..C
            if 500 * i + 100 * j + 50 * k == X
                a += 1
            end
        end
    end
end

puts a