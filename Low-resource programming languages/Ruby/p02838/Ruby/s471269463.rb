MOD = 10**9 + 7
N = gets.chomp.to_i
str = gets.split
a = Array.new(N)
for i in 0...N do
    a[i] = str[i].to_i
end
b = Array.new(60,0)
for i in 0...60 do
    for j in 0...N do
        c = a[j] % 2 == 1 ? 1 : 0
        b[i] += c
        a[j] /= 2 
    end
end
answer = 0
for i in 0...60 do
    answer += b[i] * (N - b[i]) * 2**i
    answer %= MOD
end
puts answer