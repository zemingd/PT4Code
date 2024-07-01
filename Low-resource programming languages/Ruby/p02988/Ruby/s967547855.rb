N = gets.chomp.to_i
p = Array.new(N)
str = gets.split
for i in 0...N do
    p[i] = str[i].to_i
end

answer = 0
for i in 1...N-1 do
    if p[i] > p[i-1]
        if p[i] < p[i+1]
            answer += 1
        end
    else
        if p[i] > p[i+1]
            answer += 1
        end
    end
end

puts answer