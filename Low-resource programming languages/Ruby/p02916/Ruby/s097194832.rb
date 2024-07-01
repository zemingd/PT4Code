N = gets.chomp.to_i
a = Array.new(N)
answer = 0
c = Array.new(N-1)

str = gets.split
for i in 0...N do
    a[i] = str[i].to_i
end

str = gets.split
for i in 0...N do
    answer += str[i].to_i
end

str = gets.split
for i in 0...N-1 do
    c[i] = str[i].to_i
end

for i in 0...N-1 do
    if a[i+1] == a[i] + 1
        answer += c[a[i]-1]
    end
end

puts answer