table = Array.new(50, 0)
for i in 0..9 do
    for j in 0..9 do
        for k in 0..9 do
            for l in 0..9 do
                table[i + j + k + l] += 1
            end
        end
    end
end

while s = gets do
    puts table[s.to_i]
end