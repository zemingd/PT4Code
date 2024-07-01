def check(p)
    c = 0
    for i in 1..p do
        if (p % 2) == 1 && (p % i) == 0
            c += 1
        end
    end
    c == 8
end

n = gets.to_i

cnt = 0
for i in 1..n do
    if check(i)
        cnt += 1
    end
end
puts cnt
