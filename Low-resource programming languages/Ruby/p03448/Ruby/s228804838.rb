a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i

count = 0
for i in 0..a do
        for j in 0..b do
                for k in 0..c do
                        if i * 50 + j * 100 + k * 500 == x
                                count += 1
                        end
                end
        end
end

puts count