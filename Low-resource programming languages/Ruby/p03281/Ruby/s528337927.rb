def divisor(n)
    a = 0
    for i in 1..n
        if n % i == 0
            a += 1
        end
    end
    a
end

N = gets.to_i
b = 0
for i in 1..N 
    if divisor(i) == 8 && i % 2 == 1
        b += 1
    end
end
puts b
