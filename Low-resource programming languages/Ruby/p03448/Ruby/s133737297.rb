a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i
ans = 0
for l in 0..a do
    for m in 0..b do
        for n in 0..c do
            if l * 500 + m * 100 + n * 50 == x
                ans += 1
            end
        end
    end
end
puts ans