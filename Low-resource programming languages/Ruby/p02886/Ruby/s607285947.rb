N = gets.chomp.to_i
t = gets.chomp.split.map(&:to_i)

total_sum = 0
a = 0

while a < N do
    sum = 0
    b = a + 1
    
    while b < N do
        sum += t[a] * t[b]
        b += 1
    end
    total_sum += sum
    a += 1
end

puts total_sum