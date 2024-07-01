n = gets.to_i
i = 1
ans = 100
loop {
    break if i * i > n
    if n % i != 0
        i += 1
        next
    end
    ans = [ans, [i.to_s.size, (n / i).to_s.size].max].min
    i += 1
    }
p ans