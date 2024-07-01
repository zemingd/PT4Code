A, B = gets.split(" ").map(&:to_i)
$gcd = A.gcd(B)

def divisor(num)
    result = []
    i = 1
    while i <= $gcd do
        remainder = num % i
        if remainder == 0
            result << i
        end
        i += 1
    end 
    return result
end

d1 = divisor(A < B ? A : B)
commons = []
d1.each do |d|
    if (A > B ? A : B) % d == 0
        commons << d
    end
end
commons.delete(1)
commons.each do |c|
    commons.each do |c2|
        if c2 != c && c2 % c == 0
            commons.delete(c2)
        end
    end
end

puts commons