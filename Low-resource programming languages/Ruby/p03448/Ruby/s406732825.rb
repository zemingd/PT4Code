a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i
ans = 0
for l in 0..a
    for m in 0..b
        for n in 0..c
            sum = 500*l + 100*m + 50*n
            ans += 1　if x == sum
        end
    end
end
p ans