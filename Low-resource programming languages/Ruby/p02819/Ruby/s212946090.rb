N = gets.chomp.to_i
i = N
f = 0
while f == 0
    j = 2
    k = Math.sqrt(i).floor
    g = 1
    while j <= k
        if i%j == 0
            g = 0
        end
        j += 1
    end
    if g == 1
        f = 1
    end
    i += 1
end
i -= 1
puts i