k = gets.to_i

def gcd(a, b)
    gcd(b, a) if b > a
    return b if (r = a % b).zero?
    gcd(b, r)
end

sum = 0
(1..k).each do |i|
    (1..k).each do |j|
        ij = gcd(i, j)
        (1..k).each do |k|
            ijk = gcd(ij, k)
            sum += ijk
        end
    end
end

puts sum