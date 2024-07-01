N = gets.chomp.to_i
a = Array.new(N){Array.new(10)}
for i in 0...N do
    str = gets.chomp
    for j in 0...10 do
        a[i][j] = str[j]
    end
    a[i].sort!
end
a.sort!

answer = 0
x = 1
for i in 0...N-1 do
    if a[i] == a[i+1]
        answer += x
        x += 1
    else
        x = 1
    end
end

puts answer