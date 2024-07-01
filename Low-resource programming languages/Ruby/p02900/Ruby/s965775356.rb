str = gets.split
A,B = str[0].to_i, str[1].to_i

c = A.gcd(B)
a = 1
b = 3

a = c%2 == 0 ? a+1 : a
while c % 2 == 0
    c /= 2
end
while c > 2 && d < 10**6
    a = c%b == 0 ? a+1 : a
    while c % b == 0
        c /= b
    end
    b += 2
end
puts a