n = gets.to_i
d = gets.split.map(&:to_i)
sum = 0
for i in 0..n-1
    for j in (i+1)..n-1
        sum += d[i]*d[j]
    end
end
puts sum