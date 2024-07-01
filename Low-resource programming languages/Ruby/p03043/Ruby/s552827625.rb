n,k = gets.split.map(&:to_i)
ans = 0
for i in 1..n
    x = i
    for j in 0..60
        if x >= k
            ans += (1.0/n)*0.5**(j)
            break
        end
        x <<= 1
    end
end
puts ans