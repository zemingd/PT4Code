k = gets.to_i
s = 0
for a in 1..k
    for b in 1..k
        for c in 1..k
            s += a.gcd(b).gcd(c)
        end
    end
end
puts s
