a, b, x = gets.split.map(&:to_i)
if (x < a) or (a + b < x)
    puts 'NO'
else
    puts 'YES'
end