K = gets.to_i
ans = 0
for a in 1..K
    for b in 1..K
        for c in 1..K
            ans += a.gcd(b.gcd(c))
        end
    end
end
p ans