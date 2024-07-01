k = gets.to_i

def gcd(a, b)
    gcd(b, a) if b > a
    return b if (r = a % b).zero?
    gcd(b, r)
end

sum = 0
(1..k).each do |i|
    if i == 1
        sum += k ** 2
        next
    end
    (1..k).each do |j|
        if j == 1
            sum += k
            next
        end
        ij = gcd(i, j)
        (1..k).each do |k|
            if k == 1
                sum += 1
                next
            end
            ijk = gcd(ij, k)
            sum += ijk
        end
    end
end

puts sum