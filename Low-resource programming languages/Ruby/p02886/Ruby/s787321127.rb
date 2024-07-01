N = gets.chomp.to_i
str = gets.split
d = Array.new(N)
for i in 0...N do
    d[i] = str[i].to_i
end

answer = 0
for i in 0...N-1 do
    for j in i+1...N do
        answer += d[i] * d[j]
    end
end
puts answer