a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
x = gets.chomp.to_i
s = x
count = 0
max_a = x/500 < a ? x/500 : a
i = 0
for i in 0..max_a
    x = s
    if (x - 500*i) == 0
        count += 1
        break
    else 
        x = x - 500*i
    end
    if x > 0
        t = x
        max_b = x/100 < b ? x/100 : b
        j = 0
        for j in 0..max_b
            x = t
            if (x - 100*j) == 0
                count += 1
                break
            else
                x = x - 100*j
            end
            if x > 0
                u = x
                max_c = x/50 < c ? x/50 : c
                k = 0
                for k in 0..max_c
                    x = u
                    if (x - 50*k) == 0
                        count += 1
                        break
                    else
                        x = x - 50*k
                    end
                end
            end
        end
    end
end

print count
