str = gets.split
N,M = str[0].to_i, str[1].to_i
str = gets.split
a = Array.new(N)
for i in 0...N do
    a[i] = str[i].to_i
end

if N == 1
   l = a[0]
else
    g = a[0].gcd(a[1])
    l = a[0]*a[1]/g
    i = 2
    while i < N
        g = a[i].gcd(l)
        l = a[i]*l/g
        i += 1
    end
end
l /= 2
answer = M/l
answer += 1
answer /= 2
puts answer