n = gets.to_i
a = n

s = []
i = 0
loop do
    s[i] = a % 10
    if a < 10
        break
    end
    a /= 10
    i+=1
end

if n % s.sum == 0
    puts('Yes')
else
    puts('No')
end