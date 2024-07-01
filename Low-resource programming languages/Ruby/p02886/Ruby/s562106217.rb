n = gets.to_i
a = gets.split.map(&:to_i)

sum = 0
for i in 0...n
    for j in i+1...n
        sum += a[i] * a[j]
    end
end

puts sum