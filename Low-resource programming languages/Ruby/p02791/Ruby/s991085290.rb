N = gets.chomp.to_i
a = Array.new(N)
str = gets.split
for i in 0...N do
    a[i] = str[i].to_i
end
answer = 1
min = a[0]
for i in 1...N do
    if a[i] < min
        min = a[i]
        answer += 1
    end
end

puts answer