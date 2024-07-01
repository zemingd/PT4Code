MOD = 10**9 + 7
N = gets.chomp.to_i
a = gets.split.map(&:to_i)
b = Array.new(60,0)
while !a.empty?
    c = a.pop
    for j in 0...60 do
        b[j] += c[j]
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