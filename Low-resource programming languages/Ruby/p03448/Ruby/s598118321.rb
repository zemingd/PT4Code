a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i
cnt = 0

for ax in 0..a
    for bx in 0..b
        for cx in 0..c
            cnt += 1 if ax * 500 + bx * 100 + cx * 50 == x
        end
    end
end

puts cnt