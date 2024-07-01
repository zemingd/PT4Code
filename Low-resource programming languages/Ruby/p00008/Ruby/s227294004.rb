while s = gets do
    n = s.to_i
    res = 0
    for i in 0..9 do
        for j in 0..9 do
            for k in 0..9 do
                for l in 0..9 do
                    if i + j + k + l == n
                        res += 1
                    end
                end
            end
        end
    end
    puts res
end