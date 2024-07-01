n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

count = 0
for i in 0.upto(n - 1)
    if a[i] <= b[i] then
        count += a[i]
        b[i] = b[i] - a[i]
        if a[i + 1] <= b[i] then
            count += a[i + 1]
            a[i + 1] = 0
        else
            count += b[i]
            a[i + 1] = a[i + 1] - b[i]
        end
    else
        count += b[i]
    end
end

puts count
