include Math
N = gets.to_i
count = 0

for n in 1..N
    max = sqrt(n).ceil
    for x in 1..max
        for y in x..max
            for z in y..max
                if x ** 2 + y ** 2 + z ** 2 + x * y + y * z + z * x == n
                    if x == y && y == z
                        count += 1
                    elsif x == y || y == z
                        count += 3
                    else
                        count += 6
                    end
                end
            end
        end
    end
    p count
    count = 0
end