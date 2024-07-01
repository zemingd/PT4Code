a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
x = gets.chomp.to_i
count = 0
for i in 0..a do
    for j in 0..b do
        for k in 0..c do
            if i * 500 + j * 100 + k * 50 == x
                count += 1
            end
        end
    end
end
puts count