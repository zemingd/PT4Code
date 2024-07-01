K = gets.chomp.to_i

a, b, c = 15, 18, 21

def gcd(a, b, c)
    a, b = b, a%b while b > 0
    a, c = c, a%c while c > 0
    a
end

ans = 0
for i in 1..K do
    for j in 1..K do
        for k in 1..K do
            ans += gcd(i, j, k)
        end
    end
end

puts ans