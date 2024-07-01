n = gets.to_i
d = gets.split.map(&:to_i)

if d[0] != 0
    puts "0"
    return
end

c = Array.new(n, 0)
for i in 0...n
    c[d[i]] += 1
end

for i in 0...n-1
    if c[i] == 0 && c[i+1] > 0
        puts "0"
    end
end

ans = 0
for i in 1...n
    x = c[i-1]
    for j in 0...c[i]-1
        x = (x * c[i-1]) % 998244353
    end
    ans = (ans + x) % 998244353
end

puts ans
