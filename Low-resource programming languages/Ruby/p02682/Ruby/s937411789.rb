a, b, c, k = gets.split.map(&:to_i)

plus = a
minus = k - a - b

if c >= 1
    puts(plus - minus)
else
    puts(plus)
end