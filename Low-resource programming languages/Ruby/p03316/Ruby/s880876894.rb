n = gets.to_i
a = n

s = []
while true do
    s.push a % 10
    if a < 10
        break
    end
    a /= 10
end

if n % s.sum == 0
    puts('Yes')
else
    puts('No')
end