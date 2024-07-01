MOD = 10**9 + 7
N = gets.chomp.to_i
str = gets.split
b = Array.new(60,0)
for i in 0...N do
    a = str[i].to_i
    for j in 0...60 do
        if a%2 == 1
            b[j] += 1
        end
        a /= 2
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