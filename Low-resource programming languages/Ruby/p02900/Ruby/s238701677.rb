str = gets.split
A,B = str[0].to_i, str[1].to_i

c = A.gcd(B)
a = 1
b = 3

if c % 2 == 0
    a += 1
    while c % 2 == 0
        c /= 2
    end
end
while c > 2
    if c % b == 0
        a += 1
        while c % b == 0
            c /= b
        end
    end
    b += 2
end
puts a