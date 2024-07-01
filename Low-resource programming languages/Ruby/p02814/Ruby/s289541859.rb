str = gets.split
N,M = str[0].to_i, str[1].to_i
str = gets.split
a = Array.new(N)
for i in 0...N do
    a[i] = str[i].to_i/2
end
a.sort!

l = a[0]
i = 1
while i < N
    if a[i] != a[i-1]
        g = a[i].gcd(l)
        l = a[i]*l/g 
    end
    i += 1
end
answer = M/l
answer += 1
answer /= 2
for i in 0...N do
    if l % a[i] != 0
        answer = 0
    end
end
puts answer