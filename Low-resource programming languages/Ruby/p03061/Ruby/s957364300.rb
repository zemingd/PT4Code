n = gets.to_i
a = gets.split.map(&:to_i)

mae = Array.new(n)
usiro = Array.new(n)

mae[0] = a[0]
usiro[0] = a[n-1]

for i in 1...n
    mae[i] = a[i].gcd(mae[i-1])
    usiro[i] = a[n-1-i].gcd(usiro[i-1])
end

ret = [mae[n-2], usiro[1]].max

for i in 1..n-2
    ret = [ret, mae[i-1].gcd(usiro[i-1])].max
end

p ret