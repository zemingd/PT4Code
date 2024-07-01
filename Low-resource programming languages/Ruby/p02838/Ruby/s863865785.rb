MOD = 10**9 + 7
N = gets.chomp.to_i
str = gets.split
a = Array.new(N)
for i in 0...N do
    a[i] = str[i].to_i
end
b = Array.new(60,0)
for i in 0...N do
    e = a[i]
    for j in 0...60 do
        if e%2 == 1
            b[j] += 1
        end
        e /= 2
    end
end
answer = 0
d = 1
for i in 0...60 do
    answer += b[i] * (N - b[i]) * d
    d *= 2
    d %= MOD
    answer %= MOD
end
puts answer