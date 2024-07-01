a, b, c, k = gets.split.map(&:to_i)

sum = 0

if a >= 1
    sum = sum + a
else
    sum = sum
end

if (k  - (a + b)) >= 1 && c >= 1
    sum = sum - (k  - (a + b))
else
    sum = sum
end

puts(sum)